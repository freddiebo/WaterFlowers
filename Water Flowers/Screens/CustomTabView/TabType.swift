//
//  TabType.swift
//  Water Flowers
//
//  Created by Vladislav Bondarev on 29.11.2021.
//

enum TabType: Int, CaseIterable {
    case myFlowers = 0
    case needWater
    case settings
    
    var tabItem: TabItemData {
        switch self {
        case .myFlowers:
            return TabItemData(image: "leaf",
                               selectedImage: "leaf.fill",
                               title: "Your Flowers")
        case .needWater:
            return TabItemData(image: "drop",
                               selectedImage: "drop.fill",
                               title: "Need Water")
        case .settings:
            return TabItemData(image: "gearshape",
                               selectedImage: "gearshape.fill",
                               title: "Setting")
        }
    }
}
