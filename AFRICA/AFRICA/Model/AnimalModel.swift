//
//  AnimalModel.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/1/21.
//

import Foundation
struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
