//
//  HomeGridView.swift
//  Apple-Frameworks
//
//  Created by Mahmoud Aziz on 16/08/2023.
//

import SwiftUI

struct HomeGridView: View {
  @StateObject private var viewModel: HomeViewModel = HomeViewModel()
  
  var columns: [GridItem] = [
    .init(.flexible()),
    .init(.flexible()),
    .init(.flexible())
  ]
  
  var body: some View {
    NavigationView {
      ScrollView {
        LazyVGrid(columns: columns) {
          ForEach(MockData.frameworks) { framework in
            FrameworkItemView(framework: framework)
              .onTapGesture {
                viewModel.selectedFramework = framework
              }.sheet(isPresented: $viewModel.isDetailSheetPresented) {
                DetailsView(
                  framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                  isPresented: $viewModel.isDetailSheetPresented,
                  isPresentedAsSheet: true)
              }
          }
        }
      }.navigationTitle("Frameworks")
    }
  }
}

struct HomeGridView_Previews: PreviewProvider {
  static var previews: some View {
    HomeGridView()
      .preferredColorScheme(.dark)
  }
}
