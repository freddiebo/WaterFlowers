//
//  TabBarView.swift
//  Water Flowers
//
//  Created by Vladislav Bondarev on 28.11.2021.
//

import SwiftUI

struct TabBarView: View {
    let tabBarItems: [TabItemData]
    var height: CGFloat = 70
    var width: CGFloat = UIScreen.main.bounds.width - 32
    
    @Binding var selectedIndex: Int
    
    var body: some View {
        ZStack {
            BlurView(style: .regular)
            HStack {
                Spacer()
                ForEach(tabBarItems.indices) { index in
                    let item = tabBarItems[index]
                    let isSelected = selectedIndex == index
                    Button {
                        selectedIndex = index
                    } label: {
                        TabItemView(data: item,
                                    isSelected: isSelected)
                    }
                    Spacer()
                }
            }
        }
        .frame(width: width,
               height: height)
        .cornerRadius(13)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(tabBarItems: DataMock.tabItemsDataMock,
                   selectedIndex: .constant(0))
    }
}
