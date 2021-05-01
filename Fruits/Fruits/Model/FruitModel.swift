//
//  FruitModel.swift
//  Fruits
//
//  Created by Ahmad AlSofi on 4/30/21.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headLine: String
    var image: String
    var gradientColor: [Color]
    var description: String
    var nutrition: [String]
}
