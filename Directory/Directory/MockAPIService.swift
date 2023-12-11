//
//  MockAPIService.swift
//  Directory
//
//  Created by Michele Fadda on 11/12/2023.
//

import Foundation

class MockAPIService {
    func fetchContacts(completion: @escaping ([Contact]) -> Void) {
        let fileURL = getCacheFile()

        // Check for cached data in file
        if let data = try? Data(contentsOf: fileURL),
            let cachedContacts = try? JSONDecoder().decode([Contact].self, from: data) {
                completion(cachedContacts)
            return
        }
        
        // Simulate network delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            // Mocked data
            let contacts = [
                Contact(name: "John", surname: "Doe", address: "123 Main St", phoneNumber: "123-456-7890"),
                Contact(name: "Jane", surname: "Smith", address: "456 Elm St", phoneNumber: "987-654-3210"),
                Contact(name: "Ross", surname: "Zane", address: "234 New St", phoneNumber: "923-123-1034"),
                Contact(name: "Zoe", surname: "Williams", address: "673 Old St", phoneNumber: "555-767-7810")

            ]
            completion(contacts)
        }
    }
    
    func clearCachedContacts() {
        let fileURL = getCacheFile()
        try? FileManager.default.removeItem(at: fileURL)
    }
}

