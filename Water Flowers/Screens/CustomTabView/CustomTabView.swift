//
//  CustomTabView.swift
//  Water Flowers
//
//  Created by Vladislav Bondarev on 29.11.2021.
//

import SwiftUI

struct CustomTabView<Content: View>: View {
    
    let tabs: [TabItemData]
    @Binding var selectedIndex: Int
    @ViewBuilder let content: (Int) -> Content
        
    var body: some View {
        ZStack {
            TabView(selection: $selectedIndex) {
                ForEach(tabs.indices) { index in
                    content(index)
                        .tag(index)
                }
            }
            VStack {
                Spacer()
                TabBarView(tabBarItems: tabs,
                           selectedIndex: $selectedIndex)
            }
            .padding(.bottom, 8)
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView(tabs: DataMock.tabItemsDataMock,
                      selectedIndex: .constant(0)) { index in }
    }
}
