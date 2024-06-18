//
//  ReminderApp.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 18/6/2024.
//

import SwiftUI

enum ReminderPriority: String, CaseIterable, CustomStringConvertible {
    case none
    case low
    case medium
    case high

    var description: String {
        self.rawValue.capitalized
    }

    var shortDescription: String {
        switch self {
        case .none: ""
        case .low: "!"
        case .medium: "!!"
        case .high: "!!!"
        }
    }

    static let allDescriptions = Self.allCases.map { $0.description }
}

@Observable final class Reminder: NSObject, Identifiable {
    var title: String
    var notes: String
    var flag: Bool
    var priority: ReminderPriority

    init(
        title: String,
        notes: String = "",
        flag: Bool = false,
        priority: ReminderPriority = .none
    ) {
        self.title = title
        self.notes = notes
        self.flag = flag
        self.priority = priority
    }

    var isEmpty: Bool {
        title.isEmpty
    }
}

extension Reminder {
    static let sample = Reminder(
        title: "Write chapter 10", notes: "Add new section about Observation",
        flag: true, priority: .high)
    static let samples = [
        sample,
        Reminder(title: "Cut the grass", priority: .medium),
        Reminder(
            title: "Buy new iPhone",
            notes: "Wait until the relase in September", priority: .high),
        Reminder(
            title: "Renew passport", notes: "Expires on May 15", priority: .low),
        Reminder(title: "Inflate car tires"),
        Reminder(
            title: "Replace light bulb in the kitchen", notes: "Honey due",
            priority: .medium), Reminder(title: "Buy wine", flag: true),
    ]
}

@Observable final class ReminderStorage {
    var reminders: [Reminder]
    
    init(reminders: [Reminder] = []) {
        self.reminders = reminders
    }
    
    func add(reminder: Reminder) {
        reminders += [reminder]
    }
    
    func remove(reminder: Reminder) {
        reminders.removeAll { $0 === reminder }
    }
    
    func purgeEmptyReminders() {
        reminders.removeAll { $0.isEmpty }
    }
    func flaggedReminders() -> [Reminder] {
        reminders.filter { $0.flag }
    }
    func reminders(withPriority priority: ReminderPriority) -> [Reminder] {
        reminders.filter { $0.priority == priority }
    }
}

private struct StorageKey: EnvironmentKey {
    static var defaultValue: ReminderStorage = ReminderStorage()
}

extension EnvironmentValues {
    var storage: ReminderStorage {
        get { self[StorageKey.self] }
        set { self[StorageKey.self] = newValue }
    }
}

struct ReminderRowView: View {
    @Bindable var reminder: Reminder
    @FocusState private var isFocused: Bool
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if reminder.priority != .none {
                    Text(reminder.priority.shortDescription)
                        .foregroundStyle(.blue)
                }
                TextField("New Reminder", text: $reminder.title)
                    .focused($isFocused)
                Spacer()
                if reminder.flag {
                    Image(systemName: "flag.fill")
                        .foregroundStyle(.orange)
                }
            }
            Text(reminder.notes)
                .font(.footnote)
                .foregroundStyle(.secondary)
                .lineLimit(3)
        }
        .onAppear {
            if reminder.isEmpty {
                isFocused = true
            }
        }
    }
}

struct ReminderView: View {
    @Bindable var reminder: Reminder
    private var titleNotesView: some View {
        Group {
            TextField("Title", text: $reminder.title)
                .padding(.horizontal, 5)
            ZStack(alignment: .topLeading) {
                if reminder.notes.isEmpty {
                    Text("Notes")
                        .foregroundStyle(.placeholder)
                        .padding(.horizontal, 5)
                        .padding(.top, 8)
                }
                TextEditor(text: $reminder.notes)
                    .frame(maxHeight: 100)
            }
        }
    }
    
    private var flagToggleView: some View {
        Toggle(isOn: $reminder.flag) {
            HStack {
                Image(systemName: reminder.flag ? "flag.fill" : "flag")
                    .foregroundStyle(.orange)
                Text("Flag")
            }
        }
    }
    
    @State private var priorityDescription = ReminderPriority.none.description
    
    private var priorityPicker: some View {
        Picker("Priority", selection: $priorityDescription) {
            ForEach(ReminderPriority.allDescriptions, id: \.self) { description in
                Text(description)
                if description == ReminderPriority.none.description {
                    Divider()
                }
            }
        }
        .onAppear {
            priorityDescription = reminder.priority.description
        }
        .onChange(of: priorityDescription) { oldValue, newValue in
            let priority = ReminderPriority(rawValue: newValue.lowercased())!
            $reminder.priority.wrappedValue = priority
        }
    }
    var body: some View {
        Form {
            Section {
                titleNotesView
            }
            Section {
                flagToggleView
            }
            Section {
                priorityPicker
            }
        }
    }
}

struct ReminderListView: View {
    @Environment(\.storage) private var storage
    var body: some View {
        NavigationStack {
            List(storage.reminders) { reminder in
                NavigationLink(value: reminder) {
                    ReminderRowView(reminder: reminder)
                        .onSubmit {
                            storage.purgeEmptyReminders()
                        }
                }
                .swipeActions {
                    Button(role: .destructive) {
                        storage.remove(reminder: reminder)
                    } label: {
                        Text("Delete")
                    }
                }
            }
            .listStyle(.plain)
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Button {
                        let newReminder = Reminder(title: "")
                        storage.add(reminder: newReminder)
                    } label: {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                            Text("New Reminder")
                        }
                    }
                    Spacer()
                }
            }
            .navigationTitle("Reminders (\(storage.flaggedReminders().count) flagged, \(storage.reminders(withPriority: .high).count) high)")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: Reminder.self) { reminder in
                ReminderView(reminder: reminder)
            }
            .onAppear {
                storage.purgeEmptyReminders()
            }
        }
    }
}

struct ReminderApp: View {
    @State private var storage = ReminderStorage(reminders: Reminder.samples)
    var body: some View {
        ReminderListView()
            .environment(\.storage, storage)
    }
}

#Preview {
    ReminderApp()
}
