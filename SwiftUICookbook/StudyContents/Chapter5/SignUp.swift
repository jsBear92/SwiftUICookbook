//
//  SignUp.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 14/6/2024.
//

import SwiftUI

struct Address {
    var street: String = ""
    var city: String = ""
    var postalCode: String = ""
}

struct SignUp: View {
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var address = Address()
    @State private var address2 = Address()
    @State private var lessThanTwo = false
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            Form {
                Section("Names") {
                    TextField("First Name", text: $firstname)
                    TextField("Last Name", text: $lastname)
                }
                Section("Current Address") {
                    TextField("Street Address", text: $address.street)
                    TextField("City", text: $address.city)
                    TextField("Postal Code", text: $address.postalCode)
                }
                Toggle(
                    isOn: $lessThanTwo,
                    label: { Text("Have you lived here for 2+ years") })
                if lessThanTwo {
                    Section("Previous Address") {
                        TextField("Street Address", text: $address2.street)
                        TextField("City", text: $address2.city)
                        TextField("Postal Code", text: $address2.postalCode)
                    }
                }
                Section {
                    TextField("Create Username", text: $username)
                    SecureField("Create Password", text: $password)
                }
                Button(
                    action: { print("Form submit action here") },
                    label: { Text("Submit") })
            }
            .navigationTitle("Sign Up")
        }
    }
}

#Preview {
    SignUp()
}
