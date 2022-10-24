//
//  MyFlowersViewModel.swift
//  Water Flowers
//
//  Created by Vladislav Bondarev on 01.01.2022.
//

import Foundation

class MyFlowersViewModel: ObservableObject {
    
    var selectedFlower: Flower? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
