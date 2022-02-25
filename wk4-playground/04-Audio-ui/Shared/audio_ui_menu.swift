// Use AudioDJ to pick a audio to accompany view
// everytime view is created a new AudioDJ is created

import SwiftUI

struct audio_ui_menu: View {
  @StateObject var audioDJ = AudioDJ()
  @State private var selection: Int? = nil
  let views = ["Rain", "Wind", "Train", "Birds"]
  var body: some View {
    VStack {
      NavigationLink(destination: Text(views[0]), tag: 0, selection: $selection) { EmptyView() }
      NavigationLink(destination: Text(views[1]), tag: 1, selection: $selection) { EmptyView() }
      NavigationLink(destination: Text(views[2]), tag: 2, selection: $selection) { EmptyView() }
      NavigationLink(destination: Text(views[3]), tag: 3, selection: $selection) { EmptyView() }
      Button("Pick 1 at a time") {
        let choice = Int.random(in: 0..<views.count)
        print("choice", choice)
        choose( choice )
      }
      Text("last selection \(audioDJ.soundIndex)")
      Button("Stop") {
        audioDJ.stop()
      }
      List {
        Button("bird") { choose( 0 ) }
        Button("rain") { choose( 1 ) }
        Button("train") { choose( 2 ) }
        Button("wind") { choose( 3 ) }
      }
    }
    .onAppear {
      print("audio_ui_menu onAppear audioDJ.soundIndex", audioDJ.soundIndex)
      // selection = audioDJ.soundIndex
    }
    .navigationTitle("Environment Sounds")
  }
  
  func choose(_ choice:Int) {
    selection = choice
    audioDJ.choose( choice )
    audioDJ.play()
  }
}

struct audio_ui_menu_Previews: PreviewProvider {
    static var previews: some View {
      NavigationView {
        audio_ui_menu()
      }
    }
}
