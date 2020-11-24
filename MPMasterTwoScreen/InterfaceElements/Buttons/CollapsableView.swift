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
    var body: some View {
        VStack {
            Button(action: {
                collapsed.toggle()
            }) {
                HStack {
                    Text(title.uppercased())
                    Spacer()
                    Image(systemName: "chevron.\(collapsed ? "left" : "down")")
                        .colorMultiply(Color("darkBlue"))
                }
                .padding(.horizontal, 16)
            }
            .frame(maxWidth: .infinity, minHeight: 72.0)
            if !collapsed {
                content
                    .offset(x: 0, y: -20.0)
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
