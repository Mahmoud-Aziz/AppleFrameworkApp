//
//  FrameworkItemView.swift
//  Apple-Frameworks
//
//  Created by Mahmoud Aziz on 16/08/2023.
//

import SwiftUI

struct FrameworkItemView: View {
  let framework: Framework
  var isPresentedFromList: Bool = false 
  
  var body: some View {
    if isPresentedFromList {
      HorizontalView(framework: framework, isPresentedFromList: isPresentedFromList)
    } else {
      VerticalView(framework: framework)
    }
  }
}

struct VerticalView: View {
  let framework: Framework

  var body: some View {
    VStack {
      Image(framework.imageName)
        .resizable()
        .frame(width: 90, height: 90)
      
      Text(framework.name)
        .font(.title2)
        .fontWeight(.semibold)
        .scaledToFit()
        .minimumScaleFactor(0.5)
    }.padding()
  }
}

struct HorizontalView: View {
  let framework: Framework
  var isPresentedFromList: Bool = false

  var body: some View {
    HStack {
      Image(framework.imageName)
        .resizable()
        .frame(width: isPresentedFromList ? 100 : 45, height: isPresentedFromList ? 100 : 45)
      
      Text(framework.name)
        .font(.title2)
        .fontWeight(.semibold)
        .scaledToFit()
        .minimumScaleFactor(0.5)
    }.padding()
  }
}
