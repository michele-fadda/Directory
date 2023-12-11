//
//  DetailView.swift
//  Directory
//
//  Created by Michele Fadda on 11/12/2023.
//

import SwiftUI

struct DetailView: View {
    var contact: Contact
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Name: \(contact.name)")
            Text("Surname: \(contact.surname)")
            Text("Address: \(contact.address)")
            Text("Phone: \(contact.phoneNumber)")
            Spacer()
        }
        .padding()
        .navigationTitle("Detail")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(contact: Contact(
            
            name: "John",
            surname: "Doe",
            address: "Sunset Boulevard 10230, Santa Monica",
            phoneNumber: "555-123456")
        )
    }
}
