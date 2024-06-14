//
//  FocusAndSubmit.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 14/6/2024.
//

import SwiftUI

struct FocusAndSubmit: View {
    enum AddressField {
        case streetName
        case city
        case state
        case zipCode
    }
    @State private var streetName = ""
    @State private var city = ""
    @State private var state = ""
    @State private var zipCode = ""
    @State private var description = ""
    
    @FocusState private var currentFocus: AddressField?
    @FocusState private var isFocused: Bool
    var body: some View {
        VStack {
            TextField("Address", text: $streetName)
                .focused($currentFocus, equals: .streetName)
                .submitLabel(.next)
            TextField("City", text: $city)
                .focused($currentFocus, equals: .city)
                .submitLabel(.next)
            TextField("State", text: $state)
                .focused($currentFocus, equals: .state)
                .submitLabel(.next)
            TextField("Zip code", text: $zipCode)
                .focused($currentFocus, equals: .zipCode)
                .submitLabel(.done)
            TextField("Enter the description", text: $description)
                .focused($isFocused)
            Button(action: {
                isFocused = false
            }, label: {
                Text("Hide keyboard")
            })
        }
        .padding()
        .onSubmit {
            switch currentFocus {
            case .streetName:
                currentFocus = .city
            case .city:
                currentFocus = .state
            case .state:
                currentFocus = .zipCode
            default:
                print("Thanks for providing your address")
            }
        }
    }
}

#Preview {
    FocusAndSubmit()
}
