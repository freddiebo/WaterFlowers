//
//  FlowerModel.swift
//  Water Flowers
//
//  Created by Vladislav Bondarev on 28.12.2021.
//

import Foundation

struct Flower: Hashable, Identifiable {
    let id: String
    let name: String
    let description: String
    let urlImage: String?
    let urlMoreInformation: String?
}


