//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Mahmoud Aziz on 16/08/2023.
//

import SwiftUI

struct AFButton: View {
  let title: String
  let action: (() -> Void)?
  
  var body: some View {
    Text(title)
      .font(.title2)
      .fontWeight(.semibold)
      .frame(width: 280, height: 50)
      .foregroundColor(.white)
      .background(.red)
      .cornerRadius(8)
      .onTapGesture {
        if let action {
          action()
        }
      }
  }
}

struct AFButton_Previews: PreviewProvider {
  static var previews: some View {
    AFButton(title: "hello", action: nil)
  }
}
