//
//  ContentView.swift
//  Shared
//
//  Created by jht2 on 2/16/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      VStack {
        NavigationLink (destination: audio_ui_menu()) {
          Text("Audio UI Menu")
        }
       
        // SwiftUI limit: only 8 inline links
//        NavigationLink (destination: Page9_Timer()) {
//          Text("Page9_Timer")
//        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}



