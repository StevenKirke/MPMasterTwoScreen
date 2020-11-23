//
//  TextView.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 22.11.2020.
//

import SwiftUI

struct TextView: View {
    @Binding var text: String
    var color: Color = Color("aquaBlue")
    var textColor: Color = Color("aquaBlue")
    var borderColor: Color?
    var cornerRadius: CGFloat = 15
    var height: CGFloat = 98
    var body: some View {
        ZStack {
            if let borderColor = borderColor {
                RoundedRectangle(cornerRadius: cornerRadius).stroke(borderColor)
            }
            RoundedRectangle(cornerRadius: cornerRadius)
                                .fill(color)
            TextEditor(text: $text)
                .mediumTextBlack()
                .frame(height: height)
                .padding()
        }
    }
}

//struct TextView_Previews: PreviewProvider {
//    static var previews: some View {
//        TextView(text: "")
//    }
//}
