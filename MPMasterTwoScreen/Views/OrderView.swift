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
                    //.font(Font.title.weight(.heavy))
                    .font(.custom("SFUIDisplay-Bold", size: 14))
                    .mediumTextBlue()
                Group {
                    Text("Контактный номер")
                        .smallTextBlue()
                        .topThirtyPadding()
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
            PersonView()
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






struct TopPadding: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.top, 17.0)
    }
}

struct TopThirtyPadding: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.top, 30.0)
    }
}


extension View {
    
    func topPadding() -> some View {
        self.modifier(TopPadding())
    }
    
    func topThirtyPadding() -> some View {
        self.modifier(TopThirtyPadding())
    }
}


//
//extension Text {
//
//    enum Style {
//        case h1, h2 // etc
//    }
//
//    func style(_ style: Style) -> Text {
//        switch style {
//        case .h1:
//            return
//             foregroundColor(.black)
//            .font(.system(size: 24))
//            .fontWeight(.semibold)
//        case .h2:
//            return
//             foregroundColor(.black)
//            .font(.system(size: 20))
//            .fontWeight(.medium)
//        }
//    }
//}
