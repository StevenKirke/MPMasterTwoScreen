//
//  PersonView.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 19.11.2020.
//

import SwiftUI


fileprivate let horizontalPadding: CGFloat = 15
fileprivate let topPadding: CGFloat = 25
fileprivate let buttonCopyIndent: CGFloat = 240

struct PersonView: View {
    @Environment(\.presentationMode) private var presentationMode
    
    let actionButton = TestModelForDropButton()
        
    @State var placeholder: String = "Введите текст"
    @State var placeholderSecond: String = "Введите текст"
    @State private var commentFitter: String = ""
    @State private var commentFitterSecond: String = "Комментарий какого-то чувака"
    
    var body: some View {
        let imagePadding: CGFloat = 20.0
        let imageSize: CGFloat = #imageLiteral(resourceName: "arrow_left").size.width
        let widthRectangle: CGFloat = 63
        ScrollView() {
            ZStack {
                Gradient()
                Group {
                    HStack(alignment: .firstTextBaseline) {
                        Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            
                        } ) {
                            Image("arrow_left")
                        }
                        .frame(width: imageSize)
                        Spacer()
                        VStack(alignment: .center, spacing: 10.0) {
                            Text("+ 7 (495) 265-02-01").veryBigTextWhite()
                            Text("Первичное подключение абонента").mediumTextWhite()
                                .frame(maxWidth: .infinity)
                        }
                        .padding(.leading, -(imageSize + imagePadding))
                    }
                }.padding(.leading, imagePadding)
            }
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("13:30 - 14:35").veryBigTextBlue()
                    RoundedRectangle(cornerRadius: widthRectangle / 2)
                        .fill(Color("darkBlue"))
                        .frame(width: 63, height: 3)
                    DropDownView(menuActions: actionButton.actionButton, selectItem: actionButton.actionButton.first!)
                        .mediumTextBlue()
                }
                .padding(.leading, horizontalPadding)
                VStack(alignment: .leading, spacing: horizontalPadding ) {
                    LabelView(
                        title: "Тип наряда",
                        value: "Первичное подключение абонента")
                    LabelView(
                        title: "Номер WFM",
                        value: "987654321")
                    HStack {
                        LabelView(
                            title: "Телефон",
                            value: "+ 7 (495) 265-02-01")
                        SquareButton(action: { })
                    }
                    .frame(width: buttonCopyIndent)
                    HStack {
                        LabelView(
                            title: "Контактный телефон",
                            value: "+ 8 (962) 262-02-03")
                        SquareButton(action: { })
                    }
                    .frame(width: buttonCopyIndent)
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
                .padding(.leading, horizontalPadding)
                .padding(.top, horizontalPadding)
                Group {
                    HStack(spacing: horizontalPadding) {
                        ButtonWithBack(action: { },
                                       width: 85,
                                       hight: 40,
                                       text: "Карты")
                        ButtonWithBack(action: { },
                                       width: 190,
                                       hight: 40,
                                       text: "Копировать в буфер")
                    }
                }
                .padding(.leading, horizontalPadding)
                .padding(.vertical, horizontalPadding)
                VStack(alignment: .leading, spacing: horizontalPadding ) {
                    HStack {
                        LabelView(
                            title: "Номер УСПД",
                            value: "123456789")
                        SquareButton(action: { })
                    }
                    .frame(width: buttonCopyIndent)
                    LabelView(
                        title: "Схема заявки",
                        value: "Канальная")
                }
                .padding(.leading, horizontalPadding)
                VStack(alignment: .leading, spacing: horizontalPadding ) {
                    Text("Комментарий монтажника")
                        .mediumTextBlack()
                    TextFieldView(placeholder: $placeholder,
                                  text: $commentFitter,
                                  borderColor: .clear,
                                  backColor: Color("magnolia"),
                                  textColor: Color("lightBlack"),
                                  height: 100)
                        .mediumTextBlack()
                    TextFieldView(placeholder: $placeholderSecond,
                                  text: $commentFitterSecond,
                                  borderColor: Color("aquaBlue"),
                                  backColor: Color("whiteBlue"),
                                  textColor: Color("aquaBlue"),
                                  height: 75)
                        .mediumTextBlack()
                }
                .padding(.leading, horizontalPadding)
                .padding(.top, horizontalPadding)
            }
            .padding(.vertical, 25)
            .background(Color.white)
            .cornerRadius(13.0)
            .padding(.horizontal, horizontalPadding)
            .offset(y: -40)
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                CollapsableView(content:
                                    VStack(alignment: .leading) {
                                        Text("Прослушка с помощью лидаров пылесоса — новая угроза частной жизни. Делаем лазерный микрофон в домашних условиях")
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .fixedSize(horizontal: false, vertical: true)
                                            .mediumTextBlack()
                                    }
                                    .padding(.horizontal, horizontalPadding)
                                ,
                                title: "данные по абоненту")
                CollapsableView(content:
                                    VStack(alignment: .leading) {
                                        Text("Was trying to understand this myself as other answers here mention Text.multilineTextAlignment(_:) / VStack(alignment:) / frame(width:alignment:) but each solution solves a specific problem. Eventually it depends on the UI requirement and a combination of these.")
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .fixedSize(horizontal: false, vertical: true)
                                            .mediumTextBlack()
                                    }
                                    .padding(.horizontal, horizontalPadding)
                                ,
                                title: "подключаемые услуги")
                CollapsableView(content:
                                    VStack(alignment: .leading) {
                                        Text("1111")
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .fixedSize(horizontal: false, vertical: true)
                                            .mediumTextBlack()
                                    }
                                    .padding(.horizontal, horizontalPadding)
                                ,
                                title: "разовые услуги")
            }
            .padding(.horizontal, horizontalPadding)
            .offset(y: -30)
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

extension PersonView {
    func copytoClipboard(text: String) {
        UIPasteboard.general.string = text
    }
}
