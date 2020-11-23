//
//  CollapsableView.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 22.11.2020.
//

import SwiftUI

struct CollapsableView<Content: View>: View {
    var content: Content
    let title: String
    @State var collapsed: Bool = true
    @State var rotate: Double = 90
    var body: some View {
        VStack {
            Button(action: {
                collapsed.toggle()
                rotate = collapsed ? 90 : 0
            })
            {
                HStack {
                    Text(title.uppercased())
                    Spacer()
                    Image("arrow_bottom")
                        .colorMultiply(Color("darkBlue"))
                        .rotationEffect(.init(degrees: rotate))
                }
                .padding(.horizontal, 16)
            }
            .frame(maxWidth: .infinity, minHeight: 72.0)
            if !collapsed {
                content
                    .offset(x: 0, y: -20.0)
                //.padding(.horizontal, 16)
            }
        }.background(
            RoundedRectangle(cornerRadius: 13.0)
                .fill(Color.white)
        )
    }
}

struct CollapsableView_Previews: PreviewProvider {
    static var previews: some View {
        CollapsableView(content: Text("Какой то текст hghfgh hgh hgfg hgfh fhfghgfh hfghgfh hfgh hfgh hgfhgfh hfgh ghfg"), title: "данные по абоненту")
    }
}
