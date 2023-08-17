//
//  HomeListView.swift
//  Apple-Frameworks
//
//  Created by Mahmoud Aziz on 17/08/2023.
//

import SwiftUI

struct HomeListView: View {
  @StateObject private var viewModel: HomeViewModel = HomeViewModel()
  @State private var selectedFramework: Framework? = nil
  
  var body: some View {
    NavigationView {
      List {
        ForEach(MockData.frameworks) { framework in
          NavigationLink(
            destination:
              DetailsView(
                framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                isPresented: $viewModel.isDetailSheetPresented)
          ) {
            FrameworkItemView(framework: framework, isPresentedFromList: true)
          }
        }
      }.navigationTitle("Frameworks")
    }.accentColor(Color(.label))
  }
}

struct HomeListView_Previews: PreviewProvider {
  static var previews: some View {
    HomeListView()
  }
}
