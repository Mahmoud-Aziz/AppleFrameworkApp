//
//  DismissButtonView.swift
//  Apple-Frameworks
//
//  Created by Mahmoud Aziz on 16/08/2023.
//

import SwiftUI

struct DismissButtonView: View {
  var action: (() -> Void)
  
  var body: some View {
    Button {
      action()
    } label: {
      Image(systemName: "x.circle")
        .foregroundColor(.red)
        .imageScale(.large)
        .frame(width: 44, height: 44)
    }
  }
}
