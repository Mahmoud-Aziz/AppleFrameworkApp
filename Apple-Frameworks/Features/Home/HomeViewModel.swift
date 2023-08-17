//
//  HomeViewModel.swift
//  Apple-Frameworks
//
//  Created by Mahmoud Aziz on 16/08/2023.
//

import SwiftUI

class HomeViewModel: ObservableObject {
  @Published var isDetailSheetPresented: Bool = false
  @Published var isSafariViewPresented: Bool = false
  var selectedFramework: Framework? {
    didSet {
      isDetailSheetPresented.toggle()
    }
  }
}
