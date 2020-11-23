//
//  Background.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 18.11.2020.
//

import SwiftUI

struct Background: View {
    let color: String
    var body: some View {
        Color(color)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background(color: "veryLightBlue")
    }
}
