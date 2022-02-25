// Audio loaded from url

import SwiftUI
import AVFoundation

func loadUrlAudio(_ urlString:String) -> AVAudioPlayer? {
  let url = URL(string: urlString)
  do {
    let data = try Data(contentsOf: url!)
    return try AVAudioPlayer(data: data)
  } catch {
    print("loadUrlSound error", error)
  }
  return nil
}
//birds, rain, train, wind
let urlSounds = [
  "https://drive.google.com/file/d/1yTpky-j5naE75dJyvg-UM-3x-2GvGzgV/view?usp=sharing",
  "https://drive.google.com/file/d/1P5-X6_cOCtQjRNYzsxPVKBOPLvjxmy0V/view?usp=sharing",
  "https://drive.google.com/file/d/1QqY5j21Bn4QsD-1uVQy5vacW2fl3ZUIO/view?usp=sharing",
  "https://drive.google.com/file/d/1LKtq9pu-gqK2VkZx-HVW897ul1Vk09z4/view?usp=sharing",
]

struct Page2: View {
  @State private var soundIndex = 0
  @State private var soundFile = urlSounds[0]
  @State private var player: AVAudioPlayer? = nil
  var body: some View {
    TimelineView(.animation) { context in
      VStack {
        HStack {
          Button("Play") {
            print("Button Play")
            player = loadUrlAudio(soundFile)
            print("player", player as Any)
            // Loop indefinitely
            player?.numberOfLoops = -1
            player?.play()
          }
          Button("Stop") {
            print("Button Stop")
            player?.stop()
          }
          Button("Next") {
            soundIndex = (soundIndex+1) % urlSounds.count
            soundFile = urlSounds[soundIndex]
          }
        }
        Text("soundIndex \(soundIndex)")
        Text(soundFile)
        if let player = player {
          Text("duration " + String(format: "%.1f", player.duration))
          Text("currentTime " + String(format: "%.1f", player.currentTime))
        }
      }
    }
  }
}

struct Page2_Previews: PreviewProvider {
  static var previews: some View {
    Page2()
  }
}
