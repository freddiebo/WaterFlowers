//
//  FlowerAddViewModel.swift
//  Water Flowers
//
//  Created by Vladislav Bondarev on 06.01.2022.
//

import SwiftUI

final class FlowerAddViewModel: ObservableObject {
    
    var newFlower: Flower?
    @Published var isShowingAddView = false
}
