//
//  SquareButton.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 20.11.2020.
//

import SwiftUI

struct SquareButton: View {
    var action: () -> Void
    var body: some View {
        Button(action: action) {
            Image("double_frame")
        }
        .squareButtonWidth()
        .background(
            RoundedRectangle(cornerRadius: 13.0)
                .fill(Color("lightBlue"))
        )
    }
}

struct SquareButton_Previews: PreviewProvider {
    static var previews: some View {
        SquareButton(action: { } )
    }
}
