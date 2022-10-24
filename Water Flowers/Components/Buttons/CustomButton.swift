//
//  CustomButton.swift
//  Water Flowers
//
//  Created by Vladislav Bondarev on 04.12.2021.
//

import SwiftUI

struct CustomButton: View {
    @Environment(\.colorScheme) var colorScheme
    
    let buttonType: ButtonType
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: buttonType.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24)
                .foregroundColor(colorScheme == .dark ? .white : .black)
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(buttonType: .add) {
            print("tap")
        }
    }
}
