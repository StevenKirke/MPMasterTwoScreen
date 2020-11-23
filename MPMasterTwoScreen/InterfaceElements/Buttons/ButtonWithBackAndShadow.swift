//
//  ButtonWithBackAndShadow.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 20.11.2020.
//

import SwiftUI

struct ButtonWithBackAndShadow: View {
    var action: () -> Void
    var text: String
    var body: some View {
        Button(action: action) {
            Text(text).foregroundColor(.white)
        }.buttonWithBackOrBorder()
        .background(
            RoundedRectangle(cornerRadius: 13.0)
                .fill(Color("darkBlue"))
                .shadow(color: Color("darkBlue"), radius: 4, x: 0, y: 3)
        )
    }
}

struct ButtonWithBackAndShadow_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithBackAndShadow(action: { }, text: "PUSH")
    }
}
