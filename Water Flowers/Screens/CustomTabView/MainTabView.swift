//
//  MainTabView.swift
//  Water Flowers
//
//  Created by Vladislav Bondarev on 29.11.2021.
//

import SwiftUI

struct MainTabView: View {
    
    @State var selectedIndex: Int = 0
    var body: some View {
        TabView {
            MyFlowersView()
                .tabItem {
                    TabItemView(data: TabItemData(image: "leaf", selectedImage: "leaf.fill", title: "MyFlowers"), isSelected: false)
                }
            Text("NeedWater")
                .tabItem {
                    TabItemView(data: TabItemData(image: "leaf", selectedImage: "leaf.fill", title: "MyFlowers"), isSelected: false)
                }
        }
    }
    
//    #FOR CUSTOM TAB VIEW
//    var body: some View {
//        CustomTabView(tabs: TabType.allCases.map({ $0.tabItem }),
//                      selectedIndex: $selectedIndex) { index in
//            let type = TabType(rawValue: index) ?? .myFlowers
//            getTabView(type: type)
//                .onAppear {
//                    let appearance = UITabBarAppearance()
//                    appearance.configureWithTransparentBackground()
//
//                    UITabBar.appearance().standardAppearance = appearance
//                    UITabBar.appearance().scrollEdgeAppearance = appearance
//                }
//        }
//    }
//
//    @ViewBuilder
//    func getTabView(type: TabType) -> some View {
//        switch type {
//        case .myFlowers:
//            MyFlowersView()
//        case .needWater:
//            Text("NeedWater")
//        case .settings:
//            Text("Setting")
//        }
//    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
//        MainTabView().colorScheme(.dark)
    }
}
