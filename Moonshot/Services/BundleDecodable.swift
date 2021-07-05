//
//  BundleDecodable.swift
//  Moonshot
//
//  Created by Nivas Muthu M G on 05/07/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Unable to parse the data")
        }
        
        guard let loaded = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("Failed to decode bundle from the \(file)")
        }
        
        return loaded
    }
}
