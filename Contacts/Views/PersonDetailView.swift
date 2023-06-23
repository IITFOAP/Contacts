//
//  PersonDetailView.swift
//  Contacts
//
//  Created by Рома Баранов on 23.06.2023.
//

import SwiftUI

struct PersonDetailView: View {
    let person: Person
    
    var body: some View {
        
        Form {
            Section(header: Text("")) {
                HStack {
                    Spacer()
                    Image(systemName: Contacts.person.rawValue)
                        .resizable()
                        .frame(width: 150, height: 150)
                    Spacer()
                }
                ContactInfo(image: Contacts.phone.rawValue, info: person.phoneNumber)
                ContactInfo(image: Contacts.email.rawValue, info: person.email)
            }
        }
        
        .navigationTitle(person.fullName)
    }
}



