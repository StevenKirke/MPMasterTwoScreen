//
//  ButtonWithBack.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 22.11.2020.
//

import SwiftUI

struct ButtonWithBack: View {
    var action: () -> Void
    var width: CGFloat = 85
    var hight: CGFloat = 40
    var text: String
    var body: some View {
        Button(action: action) {
            Text(text).mediumTextBlue()
        }.frame(width: width, height: hight)
        .background(
            RoundedRectangle(cornerRadius: 13.0)
                .fill(Color("lightBlue"))
        )
    }
}

struct ButtonWithBack_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithBack(action: {}, width: 85, text: "Отмена")
    }
}
