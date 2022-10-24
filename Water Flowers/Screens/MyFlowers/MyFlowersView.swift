//
//  MyFlowersView.swift
//  Water Flowers
//
//  Created by Vladislav Bondarev on 04.12.2021.
//

import SwiftUI

struct MyFlowersView: View {
    
    @StateObject var viewModel = MyFlowersViewModel()
    @StateObject var addViewModel = FlowerAddViewModel()
//    let grid: [GridItem] = [GridItem(.flexible()),
//                            GridItem(.flexible()),
//                            GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ZStack {
                NavBarGradient()
                FlowersScrollView()
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        CustomButton(buttonType: .edit) {
                            tapEditFlowers()
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        CustomButton(buttonType: .add) {
                            addViewModel.isShowingAddView = true
                        }
                        .sheet(isPresented: $addViewModel.isShowingAddView,
                               onDismiss: {
                        
                        },
                               content: {
                            FlowerAddView(isShowingAddView: $addViewModel.isShowingAddView)
                        })
                    }
                }
            }
            .navigationTitle("All list View")
            .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .light)
            
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
    }
    
    func tapEditFlowers() {
        print("tap edit")
    }
}

struct FlowersScrollView: View {
    
    @StateObject var viewModel = MyFlowersViewModel()
    let grid: [GridItem] = [GridItem(.adaptive(minimum: 100))]
    
    var body: some View {
        ScrollView {
//        List {
            LazyVGrid(columns: grid) {
                ForEach(DataMock.flowersDataMock, id: \.self) { flower in
                    NavigationLink {
                        FlowerDetailView(flower: flower,
                                         isShowingDetailView: $viewModel.isShowingDetailView)
                    } label: {
                        FlowerCell(flower: flower)
                            .padding(6)
                            .foregroundColor(.black)
                    }
                }
            }
        }
        
        .padding(EdgeInsets(top: 6,
                             leading: 6,
                             bottom: 12,
                             trailing: 6))
        
    }
}

struct MyFlowersView_Previews: PreviewProvider {
    static var previews: some View {
        MyFlowersView()
        FlowersScrollView()
    }
}
