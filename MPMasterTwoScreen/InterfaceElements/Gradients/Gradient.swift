//
//  Gradient.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 19.11.2020.
//

import SwiftUI

struct Gradient: View {
    //let gradient = Gradient(colors: [Color.black, Color.pink])
    var body: some View {
        Rectangle()
            .fill(LinearGradient(gradient: .init(colors: [Color("blue"), Color("darkBlue")]),
                                 startPoint: .top,
                                 endPoint: .bottom))
            .frame(maxWidth: .infinity, minHeight: 166, maxHeight: 166)
            
    }
}

struct Gradient_Previews: PreviewProvider {
    static var previews: some View {
        Gradient()
    }
}
