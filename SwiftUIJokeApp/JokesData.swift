//
//  JokesData.swift
//  SwiftUIJokeApp
//
//  Created by Berke Topcu on 22.11.2022.
//

import Foundation


struct Welcome: Identifiable, Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Identifiable, Codable {
    let id: Int
    let joke: String
    let categories: [String]
}
