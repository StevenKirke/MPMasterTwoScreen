//
//  StyleForTextWithWhiteColor.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 21.11.2020.
//

import SwiftUI

// MARK Размеры шрифта белого цвета

let white = Color("white")

struct VeryBigTextWhite: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(white)
            .font(.system(size: 22.0))
    }
}

struct BigTextWhite: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(white)
            .font(.system(size: 20.0))
    }
}

struct LargeTextWhite: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(white)
            .font(.system(size: 18.0))
    }
}

struct MediumTextWhite: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(white)
            .font(.system(size: 14.0))
    }
}

struct SmallTextWhite: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(white)
            .font(.system(size: 10.0))
    }
}


extension View {
    func veryBigTextWhite() -> some View {
        self.modifier(VeryBigTextWhite())
    }
    
    func bigTextWhite() -> some View {
        self.modifier(BigTextWhite())
    }
    
    func largeTextWhite() -> some View {
        self.modifier(LargeTextWhite())
    }
    
    func mediumTextWhite() -> some View {
        self.modifier(MediumTextWhite())
    }
    
    func smallTextWhite() -> some View {
        self.modifier(SmallTextWhite())
    }
}
