//
//  DropButton.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 22.11.2020.
//

import SwiftUI

struct DropdownButton: View {
    var onSelect: (DropdownItem) -> Void
    var items: [DropdownItem]
    @State private var showMenu: Bool = false
    @Binding var selectedItem: DropdownItem //= DropdownItem(key: 0, value: "В работе")
    var width: CGFloat = 240
    var hight: CGFloat = 40
    @State var rotate: Double = 90
    var body: some View {
        Button(action: {
            showMenu.toggle()
            rotate = showMenu ? 0 : 90
        } ) {
            HStack {
                Text(selectedItem.value).mediumTextBlue()
                Spacer()
                Image("arrow_bottom")
                    .colorMultiply(Color("darkBlue"))
                    .rotationEffect(.init(degrees: rotate))
            }
            .padding(.horizontal, 14.0)
        }.frame(width: width, height: hight)
        .background(
            RoundedRectangle(cornerRadius: 13.0)
                .fill(Color("lightBlue"))
        )
        .overlay(
            Group {
                if showMenu {
                    VStack(alignment: .leading, spacing: 0){
                        ForEach(items) { item in
                            Divider()
                            Button(action: {
                                showMenu.toggle()
                                selectedItem = item
                                onSelect(selectedItem)
                            },
                            label: {
                                Text(item.value).mediumTextBlue()
                                    .padding(.leading, 14.0)
                            }
                            )
                            .frame(width: width, height: hight, alignment: Alignment(horizontal: .leading, vertical: .center))
                        }
                    }
                    .offset(x: 0, y: hight)
                    .background(
                        RoundedRectangle(cornerRadius: 13.0)
                            .fill(Color("lightBlue"))
                            .offset(x: 0, y: hight)
                    )//.frame(width: .infinity, height: 10)
                }
            }
            ,alignment: .top
        )
    }
}


//struct DropButton_Previews: PreviewProvider {
//    static var previews: some View {
//        DropdownButton(action: {},
//                       items: [
//                        DropdownItem(key: 0, value: "В работе"),
//                        DropdownItem(key: 1, value: "Не в работе"),
//                        DropdownItem(key: 2, value: "Не известно"),
//                        DropdownItem(key: 3, value: "Все сломано")
//                       ],
//                       showMenu: false,
//                       text: "В работе")
//    }
//}


struct DropdownItem: Identifiable {
    var id: Int {
        key
    }
    let key: Int
    let value: String
}


