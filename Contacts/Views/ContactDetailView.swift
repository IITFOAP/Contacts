//
//  ContactDetailView.swift
//  Contacts
//
//  Created by Рома Баранов on 23.06.2023.
//

import SwiftUI

struct ContactDetailView: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            Section(header: Text(person.fullName).font(.headline)) {
                ContactInfo(image: Contacts.phone.rawValue, info: person.phoneNumber)
                ContactInfo(image: Contacts.email.rawValue, info: person.email)
            }
        }
        .listStyle(.plain)
    }
}

