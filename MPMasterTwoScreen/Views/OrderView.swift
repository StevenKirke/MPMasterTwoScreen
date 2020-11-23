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
                VStack {
                    Text("Звоним").mediumTextBlack().topThirtyPadding()
                    Text(viewModel.person.fullName).largeTextBlue().topPadding()
                    Text("Тип наряда").mediumTextBlack().topPadding()
                    Text(viewModel.person.outfit).mediumTextBlue().topPadding()
                    Text("Клиентское время").mediumTextBlack().topThirtyPadding()
                    Text(viewModel.person.dateAndTime).mediumTextBlue().topPadding()
                    Text("Контактный номер").smallTextBlue().topThirtyPadding()
                    ZStack {
                        Rectangle()
                            .stroke(Color("darkBlue"), style: StrokeStyle(lineWidth: 1.0, lineCap: .round, dash: [2, 2]))
                            .frame(height: 83)
                        ButtonWithBackAndShadow(action: { showPersonView.toggle() },
                                       text: viewModel.person.firstNumberPhone)
                    }
                    .padding([.leading, .trailing], 33.0)
                    ButtonWithFrame(action: { }, text: viewModel.person.secondNumberPhone)
                    ButtonOnlyText(action: { }, text: "Отмена")
                }
                .background(Color.white).cornerRadius(13.0).shadow(color: Color("opacityShadow"), radius: 4, x: 0, y: 2)
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
