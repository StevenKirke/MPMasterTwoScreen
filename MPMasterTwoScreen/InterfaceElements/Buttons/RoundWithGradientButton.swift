//
//  RoundWithGradientButton.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 22.11.2020.
//

import SwiftUI

struct RoundWithGradientButton: View {
    var action: () -> Void
    let size: CGFloat = 50
    var body: some View {
        Button(action: action) {
            Image("check_mark")
        }
        .frame(width: size, height: size)
        .background(
            RoundedRectangle(cornerRadius: size / 2)
                .fill(LinearGradient(gradient: .init(colors: [Color("darkGreen"), Color("lightGreen")]),
                                     startPoint: .top,
                                     endPoint: .bottom))
                .shadow(color: Color("darkGreen"), radius: 3, x: 0, y: 3)
        )
    }
}

struct RoundWithGradientButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundWithGradientButton(action: { } )
    }
}
