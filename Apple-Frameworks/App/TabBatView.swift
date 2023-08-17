//
//  TabBatView.swift
//  Apple-Frameworks
//
//  Created by Mahmoud Aziz on 17/08/2023.
//

import SwiftUI

struct TabBatView: View {
    var body: some View {
      TabView {
        HomeGridView().tabItem {
          Image(systemName: "")
          Text("Grid")
        }
        
        HomeListView().tabItem {
          Image(systemName: "")
          Text("List")
        }
      }
    }
}

struct TabBatView_Previews: PreviewProvider {
    static var previews: some View {
      TabBatView()
    }
}
