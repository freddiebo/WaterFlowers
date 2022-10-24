//
//  TabItemView.swift
//  Water Flowers
//
//  Created by Vladislav Bondarev on 28.11.2021.
//

import SwiftUI

struct TabItemView: View {
    let data: TabItemData
    let isSelected: Bool
    
    var body: some View {
        VStack {
            (isSelected ? Image(systemName: data.selectedImage) : Image(systemName: data.image))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
            
            Spacer().frame(height: 4)
            
            Text(data.title)
                .font(.system(size: 14))
        }
        .foregroundColor(isSelected ? .mint : .gray)
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            Text("isSelected Tab")
                .font(.title)
            TabItemView(data: DataMock.tabItemsDataMock[0],
                        isSelected: true)
            Spacer()
            Text("isDeselected Tab")
                .font(.title)
            TabItemView(data: DataMock.tabItemsDataMock[0],
                        isSelected: false)
            Spacer()
        }
    }
}

