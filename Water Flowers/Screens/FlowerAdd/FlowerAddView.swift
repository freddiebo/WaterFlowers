//
//  FlowerAddView.swift
//  Water Flowers
//
//  Created by Vladislav Bondarev on 06.01.2022.
//

import SwiftUI

struct FlowerAddView: View {
    
    @Binding var isShowingAddView: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Spacer()
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .padding(10)
                    .onTapGesture {
                        isShowingAddView = false
                    }
            }
            Form {
                Section {
                    TextField(.init("Name of flower"), text: .constant(""))
                    TextField(.init("About of flower"), text: .constant(""))
                } header: {
                    Text("Requied inforation")
                }
                Section {
                    LoaderImageView()
                    TextField(.init("Link with more information"), text: .constant(""))
                } header: {
                    Text("Optional Information")
                }
                Section {
                    HStack {
                        Spacer()
                        Button("Save") {
                            
                        }
                        .buttonStyle(.borderedProminent)
                        Spacer()
                    }
                }
            }
        }
    }
}

struct LoaderImageView: View {
    var body: some View {
        HStack {
            VStack {
                Text("Current Image")
                    .font(.caption)
                Image("Flower_Placeholder")
                    .resizable()
                    .scaledToFit()
            }
            Spacer()
            Button("Select Image") {
                
            }
            .buttonStyle(.borderedProminent)
        }
        .frame(height: 100)
    }
}

struct FlowerAddView_Previews: PreviewProvider {
    static var previews: some View {
        FlowerAddView(isShowingAddView: .constant(true))
    }
}
