//
//  TextFields.swift
//  StarWatchReborn
//
//  Created by Antonella Cirma on 10/06/2020.
//  Copyright © 2020 Antonella Cirma. All rights reserved.
//

import SwiftUI


struct appTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty { placeholder }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}

struct appTextFieldStyle: ViewModifier {
    var stroke: CGFloat
    func body(content: Content) -> some View {
        content
            .padding(.horizontal, 18)
            .foregroundColor(CustomColor.orangeLight)
            .frame(height: 50.0)
            .font(Font.system(size: 20))
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(CustomColor.blueMiddle, lineWidth: stroke))
            .background(RoundedRectangle(cornerRadius: 20)
                .foregroundColor(CustomColor.blueMiddle))
    }
}

 struct TestTextfield: UIViewRepresentable {
    @Binding var text: String
    var keyType: UIKeyboardType
    
    func makeUIView(context: Context) -> UITextField {
        let textfield = UITextField()
      textfield.keyboardType = keyType
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: textfield.frame.size.width, height: 44))
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(textfield.doneButtonTapped(button:)))
        toolBar.items = [doneButton]
        toolBar.setItems([doneButton], animated: true)
        textfield.inputAccessoryView = toolBar
        return textfield
    }

    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = text

    }
}

extension  UITextField{
    @objc func doneButtonTapped(button:UIBarButtonItem) -> Void {
       self.resignFirstResponder()
    }

}
