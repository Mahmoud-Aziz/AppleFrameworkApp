//
//  DetailsView.swift
//  Apple-Frameworks
//
//  Created by Mahmoud Aziz on 16/08/2023.
//

import SwiftUI

struct DetailsView: View {
  let framework: Framework
  @Binding var isPresented: Bool
  @State private var isSafariViewPresented: Bool = false
  var isPresentedAsSheet: Bool = false
  
  var body: some View {
    VStack {
      HStack {
        Spacer()
        if isPresentedAsSheet {
          DismissButtonView {
            isPresented = false
          }
        }
      }
      
      FrameworkItemView(framework: framework)
      Text(framework.description)
      Spacer()
      AFButton(title: "Learn more") {
        isSafariViewPresented = true
      }
    }.padding(.all)
      .fullScreenCover(isPresented: $isSafariViewPresented) {
        if  let url = URL(string: framework.urlString) {
          SafariView(url: url)
        }
      }
  }
}

struct DetailsView_Previews: PreviewProvider {
  static var previews: some View {
    DetailsView(framework: MockData.sampleFramework, isPresented: .constant(false))
      .preferredColorScheme(.dark)
  }
}
