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
    @ObservedObject var viewModel: OrderViewModel
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
                            Text(viewModel.person.firstNumberPhone).veryBigTextWhite()
                            Text(viewModel.person.outfit).mediumTextWhite()
                                .frame(maxWidth: .infinity)
                        }
                        .padding(.leading, -(imageSize + imagePadding))
                    }
                }.padding(.leading, imagePadding)
            }
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("13:30 - 14:35")
                        .bold()
                        .veryBigTextBlue()
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
                        value: viewModel.person.outfit)
                    LabelView(
                        title: "Номер WFM",
                        value: viewModel.person.numberWFM)
                    HStack {
                        LabelView(
                            title: "Телефон",
                            value: viewModel.person.firstNumberPhone)
                        SquareButton(action: { })
                    }
                    .frame(width: buttonCopyIndent)
                    HStack {
                        LabelView(
                            title: "Контактный телефон",
                            value: viewModel.person.secondNumberPhone)
                        SquareButton(action: { })
                    }
                    .frame(width: buttonCopyIndent)
                    LabelView(
                        title: "Клиентское время",
                        value: viewModel.person.dateAndTime)
                    HStack {
                        LabelView(
                            title: "Адрес",
                            value: viewModel.person.adress)
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
                Ω(alignment: .leading, spacing: horizontalPadding ) {
                    HStack {
                        LabelView(
                            title: "Номер УСПД",
                            value: viewModel.person.numberUSPD)
                        SquareButton(action: { })
                    }
                    .frame(width: buttonCopyIndent)
                    LabelView(
                        title: "Схема заявки",
                        value: viewModel.person.flowdiagram)
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
                ForEach (viewModel.person.blockElements.sorted(by: >), id: \.key) { key, value in
                    CollapsableView(content:
                                        VStack(alignment: .leading) {
                                            Text(value)
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .fixedSize(horizontal: false, vertical: true)
                                                .mediumTextBlack()
                                        }
                                        .padding(.horizontal, horizontalPadding)
                                    ,
                                    title: key)
                }
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
        PersonView(viewModel: OrderViewModel(person: Person()))
    }
}

extension PersonView {
    func copytoClipboard(text: String) {
        UIPasteboard.general.string = text
    }
}
