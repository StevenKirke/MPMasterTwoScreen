//
//  ForTestElement.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 21.11.2020.
//

import SwiftUI

struct ForTestElement: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).boltFont()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).bold()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).italic()
        }
    }
}

struct ForTestElement_Previews: PreviewProvider {
    static var previews: some View {
        ForTestElement()
    }
}


struct BoltFont: ViewModifier {
    func body(content: Content) -> some View {
        content
            .bold()
    }
}

struct ItalicFont: ViewModifier {
    func body(content: Content) -> some View {
        content
            .bold()
    }
}

extension View {
    func boltFont() -> some View {
        self.modifier(BoltFont())
    }
}
