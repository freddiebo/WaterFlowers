//
//  FlowerCell.swift
//  Water Flowers
//
//  Created by Vladislav Bondarev on 28.12.2021.
//

import SwiftUI

struct FlowerCell: View {
    
    let flower: Flower
    
//    @Enviroments()
    var body: some View {
        ZStack {
            LinearGradient(colors: [.white, Color("CellColor")],
                           startPoint: .top,
                           endPoint: .bottom)
            VStack {
                let urlImage = flower.urlImage ?? "Flower_Placeholder"
                Image(urlImage)
                    .resizable()
                    .scaledToFit()
                Text(flower.name)
                    .font(.system(size: 12))
                Text(flower.description)
                    .font(.system(size: 8))
                    .lineLimit(2)
            }
            .padding(10)
        }
        .frame(minWidth: 100, maxWidth: 120, minHeight: 100, maxHeight: 120)
        .cornerRadius(12)
        .shadow(radius: 4, x: 0, y: 0)
    }
}

struct FlowerCell_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            HStack {
                FlowerCell(flower: Flower(id: "Zamioculcas",
                                          name: "Zamioculcas",
                                          description: "Zamioculcas my small lover, Zamioculcas my small lover",
                                          urlImage: "Zamioculcas",
                                          urlMoreInformation: "Zamioculcas"))
                FlowerCell(flower: Flower(id: "Zamioculcas",
                                          name: "Zamioculcas",
                                          description: "Zamioculcas my small lover, Zamioculcas my small lover",
                                          urlImage: nil,
                                          urlMoreInformation: "Zamioculcas"))
            }
            HStack {
                FlowerCell(flower: Flower(id: "Zamioculcas",
                                          name: "Zamioculcas",
                                          description: "Zamioculcas my small lover, Zamioculcas my small lover",
                                          urlImage: "Zamioculcas",
                                          urlMoreInformation: "Zamioculcas"))
                FlowerCell(flower: Flower(id: "Zamioculcas",
                                          name: "Zamioculcas",
                                          description: "Zamioculcas my small lover, Zamioculcas my small lover",
                                          urlImage: nil,
                                          urlMoreInformation: "Zamioculcas"))
            }
            .padding(40)
            .background(.black)
        }
    }
}
