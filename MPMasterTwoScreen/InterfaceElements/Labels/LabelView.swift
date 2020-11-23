//
//  LabelView.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 22.11.2020.
//

import SwiftUI

struct LabelView: View {
    let title: String
    let value: String
    var action: (() -> Void)?
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title).mediumTextBlack()
            HStack {
                Text(value).mediumTextBlue()
                    .lineLimit(2)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer()
                if let action = action {
                    SquareButton(action: action)
                }
            }
        }
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(title: "Тип наряда", value: "ул. Острякова д.5, кв.167, подъезд 1, этаж 7 gfgdfgdfg gfdgdfgfgd gfddfgd dfggdfgdfgd")
    }
}
