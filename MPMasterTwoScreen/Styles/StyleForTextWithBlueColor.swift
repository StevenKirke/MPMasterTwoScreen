//
//  StyleForTextWithBlueColor.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 20.11.2020.
//

import SwiftUI

// MARK Размеры шрифта синего цвета

let darkBlue = Color("darkBlue")

struct VeryBigTextBlue: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(darkBlue)
            .font(.system(size: 22.0))
    }
}

struct BigTextBlue: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(darkBlue)
            .font(.system(size: 20.0))
    }
}

struct LargeTextBlue: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(darkBlue)
            .font(.system(size: 18.0))
    }
}

struct MediumTextBlue: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(darkBlue)
            .font(.system(size: 14.0))
    }
}

struct SmallTextBlue: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(darkBlue)
            .font(.system(size: 10.0))
    }
}


extension View {
    func veryBigTextBlue() -> some View {
        self.modifier(VeryBigTextBlue())
    }
    
    func bigTextBlue() -> some View {
        self.modifier(BigTextBlue())
    }
    
    func largeTextBlue() -> some View {
        self.modifier(LargeTextBlue())
    }
    
    func mediumTextBlue() -> some View {
        self.modifier(MediumTextBlue())
    }
    
    func smallTextBlue() -> some View {
        self.modifier(SmallTextBlue())
    }
}
