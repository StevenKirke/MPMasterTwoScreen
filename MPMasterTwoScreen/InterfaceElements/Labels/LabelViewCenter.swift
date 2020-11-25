//
//  LabelViewCenter.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 25.11.2020.
//

import SwiftUI

struct LabelViewCenter: View {
    let title: String
    let value: String
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text(title)
                .mediumTextBlack()
            Text(value)
        }
    }
}

struct LabelViewCenter_Previews: PreviewProvider {
    static var previews: some View {
        LabelViewCenter(title: "Звоним", value: "Иванов Иван Иванович")
    }
}
