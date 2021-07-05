//
//  Mission.swift
//  Moonshot
//
//  Created by Nivas Muthu M G on 05/07/21.
//

import Foundation

struct Mission: Codable, Identifiable {
    let id: Int
    
    struct Crew: Codable {
        let name: String
        let role: String
    }
    let crew: [Crew]
    
    let launchDate: String?
    let description: String
}
