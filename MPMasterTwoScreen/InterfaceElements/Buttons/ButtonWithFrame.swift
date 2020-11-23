//
//  ButtonWithFrame.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 20.11.2020.
//

import SwiftUI

struct ButtonWithFrame: View {
    var action: () -> Void
    var text: String
    var body: some View {
        Button(action: action, label: {
            Text(text).foregroundColor(Color("darkBlue"))
                .padding()
        })
        .buttonWithBackOrBorder()
        .background(RoundedRectangle(cornerRadius: 13.0).stroke(Color("darkBlue")))
        .padding(.top, 15.0)
    }
}

struct ButtonWithFrame_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithFrame(action: { } , text: "8 (495) 821 12 12")
    }
}
