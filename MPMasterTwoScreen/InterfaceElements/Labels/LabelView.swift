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
        VStack(alignment: .leading, spacing: 15) {
            Text(title).mediumTextBlack()
            HStack {
                Text(value).mediumTextBlue()
                    .lineLimit(2)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer()
                if let action = action {
                    SquareButton(action: action)
                        .offset(y: -10.0)
                }
            }
        }
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(title: "Тип наряда", value: "987654321", action: {})
    }
}

