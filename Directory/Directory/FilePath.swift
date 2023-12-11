//
//  FilePath.swift
//  Directory
//
//  Created by Michele Fadda on 11/12/2023.
//

import Foundation

func getDocumentsDirectory() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
}

func getCacheFile() -> URL {
    return getDocumentsDirectory().appendingPathComponent("ContactsCache.json")
}
