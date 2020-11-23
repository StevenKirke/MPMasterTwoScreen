//
//  PersonView.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 19.11.2020.
//

import SwiftUI

fileprivate let items =  [
    DropdownItem(key: 0, value: "В работе"),
    DropdownItem(key: 1, value: "Не в работе"),
    DropdownItem(key: 2, value: "Не известно"),
    DropdownItem(key: 3, value: "Все сломано")
]

fileprivate let horizontalPadding: CGFloat = 16

struct PersonView: View {
    @Environment(\.presentationMode) private var presentationMode
    
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    
    @State var curentStatus: DropdownItem = items.first!
    @State private var commentAdjuster: String = "Важный комментарий монтажника"
    @State private var connentDude: String = "Комментарий какого-то чувака"
    var body: some View {
        let imagePadding: CGFloat = 20.0
        let imageSize: CGFloat = #imageLiteral(resourceName: "arrow_left").size.width
        let widthRectangle: CGFloat = 63
        ScrollView() {
            VStack {
                ZStack {
                    Gradient()
                    HStack(alignment: .firstTextBaseline) {
                        Button(action: { self.presentationMode.wrappedValue.dismiss() } ) {
                            Image("arrow_left")
                        }
                        .frame(width: imageSize)
                        .padding(.leading, imagePadding)
                        Spacer()
                        VStack(alignment: .center, spacing: 10.0) {
                            Text("+ 7 (495) 265-02-01").veryBigTextWhite()
                            Text("Первичное подключение абонента").mediumTextWhite()
                                .frame(maxWidth: .infinity)
                        }
                        .padding(.leading, -(imageSize + imagePadding))
                    }
                    .frame(maxWidth: .infinity)
                }
                VStack {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("13:30 - 14:35").veryBigTextBlue()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 10)
                            .padding(.leading, horizontalPadding)
                        RoundedRectangle(cornerRadius: widthRectangle / 2)
                            .fill(Color("darkBlue"))
                            .frame(width: 63, height: 3)
                            .padding(.leading, horizontalPadding)
                        
                        DropdownButton(onSelect: { (item) in
                            print(item.value)
                        }, items: items, selectedItem: $curentStatus)
                        .zIndex(100)
                        .padding()
                        Group {
                            Group {
                                LabelView(
                                    title: "Тип наряда",
                                    value: "Первичное подключение абонента")
                                LabelView(
                                    title: "Номер WFM",
                                    value: "987654321")
                                LabelView(
                                    title: "Телефон",
                                    value: "+ 7 (495) 265-02-01") {
                                    UIPasteboard.general.string = "+ 7 (495) 265-02-01"
                                }
                                LabelView(
                                    title: "Контактный телефон",
                                    value: "+ 8 (962) 262-02-03") {
                                    UIPasteboard.general.string = "+ 8 (962) 262-02-03"
                                }
                                LabelView(
                                    title: "Клиентское время",
                                    value: "17.10.2018 | 12:00 - 14:00")
                                HStack {
                                    LabelView(
                                        title: "Адрес",
                                        value: "ул. Острякова д.5, кв.167, подъезд 1, этаж 7")
                                    RoundWithGradientButton(action: { } )
                                }
                            }
                            GeometryReader() { geometry in
                                HStack(spacing: 10) {
                                    ButtonWithBack(action: { },
                                                   width: geometry.size.width / 2 - 5,
                                                   hight: 40,
                                                   text: "Карты")
                                    ButtonWithBack(action: { },
                                                   width: geometry.size.width / 2 - 5,
                                                   hight: 40,
                                                   text: "Копировать в буфер")
                                }
                            }
                            .frame(height: 40)
                            LabelView(
                                title: "Номер УСПД",
                                value: "123456789") {
                                UIPasteboard.general.string = "123456789"
                            }
                            LabelView(
                                title: "Схема заявки",
                                value: "Канальная")
                            
                            Group {
                                Text("Комментарий монтажника").mediumTextBlack()
                                TextView(text: $commentAdjuster,
                                         color: Color("magnolia"))
                                TextView(text: $connentDude, color: Color("whiteBlue"), borderColor: Color("aquaBlue"))
                                    .padding(.bottom, 20)
                            }
                        }.padding(.horizontal)
                    }
                    .background(Color.white).cornerRadius(13.0)
                    .padding(.horizontal, horizontalPadding)
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                        CollapsableView(content:
                                            VStack(alignment: .leading) {
                                                Text("Прослушка с помощью лидаров пылесоса — новая угроза частной жизни. Делаем лазерный микрофон в домашних условиях")
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .fixedSize(horizontal: false, vertical: true)
                                                .mediumTextBlack()
                                                
                                            }
                                            
                                            .padding(.horizontal, 17)
,
                                        title: "данные по абоненту")
                        CollapsableView(content:
                                            VStack(alignment: .leading) {
                                                Text("Was trying to understand this myself as other answers here mention Text.multilineTextAlignment(_:) / VStack(alignment:) / frame(width:alignment:) but each solution solves a specific problem. Eventually it depends on the UI requirement and a combination of these.")
                                                    .frame(maxWidth: .infinity, alignment: .leading)
                                                .fixedSize(horizontal: false, vertical: true)
                                                .mediumTextBlack()
                                            }.padding(.horizontal, 17)
                                        ,
                                        title: "подключаемые услуги")
                        CollapsableView(content:
                                            VStack(alignment: .leading) {
                                                Text("1111")
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .fixedSize(horizontal: false, vertical: true)
                                                .mediumTextBlack()
                                            }.padding(.horizontal, 17),
                                        title: "разовые услуги")
                    }
                    .padding(.horizontal, horizontalPadding)
                    .padding(.top, 10)
                }.offset(x: 0, y: -45)
            }
        }
        .background(Color("magnolia"))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView()
    }
}


struct MediumAndWhiteText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(.white))
            .font(.system(size: 14.0))
    }
}

extension View {
    func mediumAndWhiteText() -> some View {
        self.modifier(MediumAndWhiteText())
    }
}
