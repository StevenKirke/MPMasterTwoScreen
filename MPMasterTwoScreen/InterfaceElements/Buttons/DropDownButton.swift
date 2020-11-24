//
//  DropDownButton.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 23.11.2020.
//

import SwiftUI

let actionButtonTest = TestModelForDropButton()
private var width: CGFloat = 240
private var height: CGFloat = 40
private var paddingV: CGFloat = 0
private var paddingH: CGFloat = 0
private var paddingHInner: CGFloat = 14.0
private var radius: CGFloat = 13.0
private var shadowRadius: CGFloat = 0
private var shadowX: CGFloat = 0
private var shadowY: CGFloat = 0
private var shadow: Color = .white
private var backColor: Color = Color("lightBlue")
private var forColor: Color = Color("darkBlue")

struct DropDownAction {
    var title: String
    var action: () -> ()
}

struct DropDownButton: View {
    var actionModel: DropDownAction
    var select: (DropDownAction) -> ()
    
    var body: some View {
        Button(actionModel.title) {
            self.select(self.actionModel)
        }.padding(.horizontal, paddingHInner)
    }
}

struct DropMenu: View {
    var menuActions: [DropDownAction]
    var select: (DropDownAction) -> ()
    
    var body: some View {
        VStack(spacing: 10) {
            ForEach(menuActions, id: \.title) {
                DropDownButton(actionModel: $0,
                               select: self.select)
                    .frame(width: width,
                           height: height,
                           alignment: .leading)
            }
        }
        .parametrsButtom()
    }
}

struct DropDownHeader: View {
    @Binding var select: DropDownAction
    var action: () -> ()
    var expand: Bool
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text(select.title)
                Spacer()
                Image(systemName: "chevron.\(expand ? "down" : "left")")
            }
            .padding(.horizontal, paddingHInner)
            .frame(width: width,
                   height: height,
                   alignment: .leading)
        }
        .parametrsButtom()
    }
}

struct DropDownView: View {
    var menuActions: [DropDownAction]
    @State private var expand = false
    @State var selectItem: DropDownAction
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0) {
            DropDownHeader(select: $selectItem, action: {
                expand.toggle()
            }, expand: expand)
            if expand {
                DropMenu(menuActions: menuActions) { action in
                    selectItem = action
                    expand = false
                    print(action)
                }
            }
        }
        .animation(.spring())
    }
}

struct DropDownView_Previews: PreviewProvider {
    @State static var select: DropDownAction = actionButtonTest.actionButton.first!
    static var previews: some View {
        DropDownView(menuActions: actionButtonTest.actionButton, selectItem: select)
    }
}

struct ParametrsButtom: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.vertical, paddingV)
            .padding(.horizontal, paddingH)
            .foregroundColor(forColor)
            .background(backColor)
            .cornerRadius(radius)
            .shadow(color: shadow,
                    radius: shadowRadius,
                    x: shadowX,
                    y: shadowY)
    }
}

extension View {
    func parametrsButtom() -> some View {
        self.modifier(ParametrsButtom())
    }
    
}
