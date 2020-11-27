//
//  FontWeight.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 21.11.2020.
//

import SwiftUI
/*
struct Light: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.title.weight(.light))
    }
}

struct Regular: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.title.weight(.regular))
    }
}

struct Medium: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.title.weight(.medium))
    }
}

struct Semibold: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.title.weight(.semibold))
    }
}

struct Bold: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.title.weight(.bold))
    }
}



extension View {
    func light() -> some View {
        self.modifier(Light())
    }
    
    func regular() -> some View {
        self.modifier(Regular())
    }
    
    func medium() -> some View {
        self.modifier(Medium())
    }
    
    func semibold() -> some View {
        self.modifier(Semibold())
    }
    
    func bold() -> some View {
        self.modifier(Bold())
    }
}
*/
extension Text {
    enum Style {
        case light
        case regular
        case medium
        case semibold
        case bold
    }
    
    func style(style: Style) -> Text {
        switch style {
        case .light:
            return
                font(Font.title.weight(.light))
        case .regular:
            return
                font(Font.title.weight(.regular))
        case .medium:
            return
                font(Font.title.weight(.medium))
        case .semibold:
            return
                font(Font.title.weight(.semibold))
        case .bold:
            return
                font(Font.title.weight(.bold))
        }
    }
}

