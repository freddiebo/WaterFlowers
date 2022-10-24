//
//  FlowerDetailView.swift
//  Water Flowers
//
//  Created by Vladislav Bondarev on 02.01.2022.
//

import SwiftUI

struct FlowerDetailView: View {
    
    var flower: Flower
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            NavBarGradient(gradientHeight: 100)
                .frame(height: 0)
            HeaderFlowerDetailView()
            BodyFlowerDetailView(flower: flower)
        }.navigationBarHidden(true)
    }
}

struct HeaderFlowerDetailView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        HStack {
            CustomButton(buttonType: .backward) {
                presentationMode.wrappedValue.dismiss()
            }.frame(width: 40)
            Spacer()
            CustomButton(buttonType: .edit) {
                
            }.frame(width: 40)
        }
    }
}

struct BodyFlowerDetailView: View {
    
    var flower: Flower
    
    var body: some View {
        Text(flower.name)
            .font(.system(size: 30, weight: .heavy, design: .serif))
        let urlImage = flower.urlImage ?? "Flower_Placeholder"
        Image(urlImage)
        Text(flower.description)
            .font(.system(size: 20, design: .default))
        Spacer()
    }
}

struct FlowerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FlowerDetailView(flower: DataMock.flowersDataMock[0],
                         isShowingDetailView: .constant(true))
    }
}
