//
//  ContactListView.swift
//  Contacts
//
//  Created by Рома Баранов on 22.06.2023.
//

import SwiftUI

struct ContactListView: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            NavigationLink(destination: PersonDetailView(person: person)) {
                Text(person.fullName)
            }
        }
        .listStyle(.plain)
    }
}

