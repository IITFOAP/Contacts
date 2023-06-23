//
//  ContentView.swift
//  Contacts
//
//  Created by Рома Баранов on 22.06.2023.
//

import SwiftUI

struct ContentView: View {
    private var persons = Person.getContactList()
    
    var body: some View {
        NavigationView {
            TabView {
                ContactListView(persons: persons)
                    .tabItem {
                        Image(systemName: Contacts.persons.rawValue)
                        Text("Contacts")
                }
                
                ContactDetailView(persons: persons)
                    .tabItem {
                        Image(systemName: Contacts.phone.rawValue)
                        Text("Numbers")
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
