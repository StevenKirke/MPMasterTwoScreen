//
//  StyleForTextWithBlackColor.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 21.11.2020.
//

import SwiftUI

// MARK Размеры шрифта черного цвета

let black = Color("black")

struct VeryBigTextBlack: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(black)
            .font(.system(size: 22.0))
    }
}

struct BigTextBlack: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(black)
            .font(.system(size: 20.0))
    }
}

struct LargeTextBlack: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(black)
            .font(.system(size: 18.0))
    }
}

struct MediumTextBlack: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(black)
            .font(.system(size: 14.0))
    }
}

struct SmallTextBlack: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(black)
            .font(.system(size: 10.0))
    }
}


extension View {
    func veryBigTextBlack() -> some View {
        self.modifier(VeryBigTextBlack())
    }
    
    func bigTextBlack() -> some View {
        self.modifier(BigTextBlack())
    }
    
    func largeTextBlack() -> some View {
        self.modifier(LargeTextBlack())
    }
    
    func mediumTextBlack() -> some View {
        self.modifier(MediumTextBlack())
    }
    
    func smallTextBlack() -> some View {
        self.modifier(SmallTextBlack())
    }
}
