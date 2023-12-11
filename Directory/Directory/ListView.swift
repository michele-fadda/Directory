//
//  ListView.swift
//  Directory
//
//  Created by Michele Fadda on 11/12/2023.
//

import SwiftUI

struct ListView: View {
    @State private var contacts: [Contact] = []
    @State private var selectedContact: Contact?
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {

        NavigationView {
            List(contacts) { contact in
                NavigationLink(destination: DetailView(contact: contact)) {
                    Text("\(contact.name) \(contact.surname)")
                }
                
            }
            .accessibilityLabel("ContactList")
            .navigationTitle("Contacts")
            .accessibilityIdentifier("ContactsNavigation")
            .navigationBarItems(trailing: Button("Logout") {
                           authViewModel.isAuthenticated = false
                       })
            .onAppear {
                MockAPIService().fetchContacts { fetchedContacts in
                    self.contacts = fetchedContacts
                }
            }
            
        }
    }
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
