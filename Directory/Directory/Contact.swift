//
//  Contact.swift
//  Directory
//
//  Created by Michele Fadda on 11/12/2023.
//

import Foundation

struct Contact: Identifiable, Codable {
    var id: UUID = UUID()
    var name: String
    var surname: String
    var address: String
    var phoneNumber: String
}
