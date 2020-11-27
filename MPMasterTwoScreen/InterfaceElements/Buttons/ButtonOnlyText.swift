//
//  ButtonOnlyText.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 21.11.2020.
//

import SwiftUI

struct ButtonOnlyText: View {
    var action: () -> Void
    var text: String
    var body: some View {
        Button(action: action, label: {
            Text(text).foregroundColor(Color("darkBlue"))
        })
        .buttonWithBackOrBorder()
    }
}

struct ButtonOnlyText_Previews: PreviewProvider {
    static var previews: some View {
        ButtonOnlyText(action: { }, text: "Отмена")
    }
}
