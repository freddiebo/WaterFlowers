//
//  NavBarGradients.swift
//  Water Flowers
//
//  Created by Vladislav Bondarev on 05.12.2021.
//

import SwiftUI

struct NavBarGradient: View {
    
    var gradientHeight: CGFloat?
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            LinearGradient(colors: colorScheme == .dark ? [.mint, .black] : [.mint, .white],
                           startPoint: .top,
                           endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                .frame(height: gradientHeight ?? 0)
            
            Spacer()
        }
    }
}

struct NavBarGradient_Previews: PreviewProvider {
    static var previews: some View {
        NavBarGradient()
        NavBarGradient(gradientHeight: 30).preferredColorScheme(.dark)
    }
}
