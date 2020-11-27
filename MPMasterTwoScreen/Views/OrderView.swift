//
//  OrderView.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 18.11.2020.
//

import SwiftUI

struct OrderView: View {
    @ObservedObject var viewModel: OrderViewModel
    @State private var showPersonView = false
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Background(color: "veryLightBlue")
            VStack(alignment: .center, spacing: 16) {
                LabelViewCenter(title: "Звоним",
                                value: viewModel.person.fullName)
                    .font(.custom("SFUIDisplay-Bold", size: 22))
                    .veryBigTextBlue()
                LabelViewCenter(title: "Тип наряда",
                                value: viewModel.person.outfit)
                    .font(.custom("SFUIDisplay-Bold", size: 14))
                    .mediumTextBlue()
                LabelViewCenter(title: "Клиентское время",
                                value: viewModel.person.dateAndTime)
                    .font(.custom("SFUIDisplay-Bold", size: 14))
                    .mediumTextBlue()
                Group {
                    Text("Контактный номер")
                        .smallTextBlue()
                    ZStack {
                        Rectangle()
                            .stroke(Color("darkBlue"),
                                    style: StrokeStyle(lineWidth: 1.0,
                                                       lineCap: .round, dash: [2, 2]))
                            .frame(height: 83)
                        ButtonWithBackAndShadow(action: {
                            showPersonView.toggle()
                        },
                        text: viewModel.person.firstNumberPhone)
                    }
                    .padding(.horizontal, 33.0)
                    ButtonWithFrame(action: { },
                                    text: viewModel.person.secondNumberPhone)
                    ButtonOnlyText(action: { },
                                   text: "Отмена")
                }
            }
            .padding(.vertical, 30)
            .background(Color.white)
            .cornerRadius(13.0)
            .shadow(color: Color("opacityShadow"), radius: 4, x: 0, y: 2)
            .padding(.horizontal, 13.0)
        }
        .fullScreenCover(isPresented: $showPersonView) {
            PersonView(viewModel: OrderViewModel(person: Person()))
        }
    }
}

extension OrderView {
    func transition() {
        print("1")
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OrderView(viewModel: OrderViewModel(person: Person()))
        }
    }
}


