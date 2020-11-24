//
//  TextFieldView.swift
//  MPMasterTwoScreen
//
//  Created by JARVIS on 24.11.2020.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var text: String
    @Binding var placeholder: String
    
    var borderColor: Color
    var backColor: Color
    var textColor: Color
    
    private var cornerRadius: CGFloat = 13.0
    private var width: CGFloat = 286
    private var height: CGFloat = 100
    private var opacityCursor: Double = 0.6
    private var paddingAll: CGFloat = 10.0
    
    init(placeholder: Binding<String>,
         text: Binding<String>,
         borderColor: Color,
         backColor: Color,
         textColor: Color,
         height: CGFloat) {
        UITextView.appearance().backgroundColor = .clear
        self._text = text
        self._placeholder = placeholder
        self.borderColor = borderColor
        self.backColor = backColor
        self.textColor = textColor
        self.height = height
    }
    
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(borderColor)
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(backColor)
                TextEditor(text: $text)
                    .accentColor(textColor)
                    .foregroundColor(text == placeholder ? textColor.opacity(opacityCursor) : textColor)
                    .padding(.all, paddingAll)
                    .onAppear {
                        if text == "" {
                            text = placeholder
                        }
                    }
                    .onTapGesture {
                        if text == placeholder {
                            text = ""
                        } else if text == "" {
                            text = placeholder
                        }
                    }
            }
        }
        .frame(width: width, height: height)
    }
}


struct DemoTextField: View {
    @State var text: String = ""
    @State var placeholder: String = "очень большой текст"
    var body: some View {
        TextFieldView(placeholder: $placeholder,
                      text: $text,
                      borderColor: .red,
                      backColor: .gray,
                      textColor: .yellow, height: 10)
    }
}


struct DemoTextField_Previews: PreviewProvider {
    static var previews: some View {
        DemoTextField()
    }
}
