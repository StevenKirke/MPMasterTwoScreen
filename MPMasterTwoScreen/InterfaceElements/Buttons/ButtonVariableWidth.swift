//
//  ButtonVariableWidth.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 20.11.2020.
//

import SwiftUI

struct ButtonVariableWidth: View {
    var width: CGFloat
    var text: String
    var action: () -> Void
    var body: some View {
        Button(action: action) {
            Text(text)
        }
        .frame(width: width, height: 40)
        .background(
            RoundedRectangle(cornerRadius: 13.0)
                .fill(Color("lightBlue"))
        )
    }
}

struct ButtonVariableWidth_Previews: PreviewProvider {
    static var previews: some View {
        ButtonVariableWidth(width: 190, text: "Копировать в буфер", action: { } )
    }
}
