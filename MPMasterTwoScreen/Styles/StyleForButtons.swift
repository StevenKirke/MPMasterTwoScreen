//
//  StyleForButtons.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 20.11.2020.
//

import SwiftUI

// Размер кнопки
struct BigButtonWidthAndHeight: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 234.0, height: 45.0)
    }
}

struct SquareButtonWidth: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 40.0, height: 40.0)
    }
}

extension View {
    func buttonWithBackOrBorder() -> some View {
        self.modifier(BigButtonWidthAndHeight())
    }
    
    func squareButtonWidth() -> some View {
        self.modifier(SquareButtonWidth())
    }
}
