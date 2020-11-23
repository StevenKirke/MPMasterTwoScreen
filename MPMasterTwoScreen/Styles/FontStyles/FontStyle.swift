//
//  FontStyle.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 21.11.2020.
//

import SwiftUI

struct BoldText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .bold()
    }
}

//struct ItalicText: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .italic()
//    }
//}
