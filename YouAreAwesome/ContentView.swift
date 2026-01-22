//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Nick Nedjat on 11.01.26.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    @State private var NumberOfImages = 10
    @State private var soundName = ""
    @State private var lastSoundNumber = -1

    var body: some View {
        VStack {
            Spacer()

            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)

            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 130)
                .animation(.easeInOut(duration: 0.15), value: message)

            Spacer()

            Button("Show message!") {
                //let message1 = "You are Great!"
                //let message2 = "You are Awesome!"
                
                //message = (message == message1 ? message2 : message1)
                //imageName = (imageName == image1 ? image2 : image1)
                let messages = ["You are Great!"
                                ,"When the Genius Bar Needs Help, They Call You!"
                                ,"You are Awesome!"
                                ,"You are Fantastic!"
                                ,"Fabulous? That's You!"
                                ,"You make me smile!"
                                ]
                //if imageNumber < messages.count - 1 {
                //    imageNumber += 1
                //} else {
                //    imageNumber = 0
                //}
                var MessageNumber = Int.random(in: 0...messages.count - 1)
                
                while lastMessageNumber == MessageNumber  {
                    MessageNumber = Int.random(in: 0...messages.count - 1)
                }
                message = messages[MessageNumber]
                lastMessageNumber = MessageNumber
                
                var imageNumber: Int
                repeat {
                    imageNumber = Int.random(in: 0...NumberOfImages-1)
                } while lastImageNumber == imageNumber
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
                
                var soundNumber: Int
                repeat {
                    soundNumber = Int.random(in: 0...5)
                } while lastSoundNumber == soundNumber
                soundName = "sound\(soundNumber)"
                lastSoundNumber = soundNumber
                
                guard let soundFile = NSDataAsset(name: soundName) else {
                    print("🤬Could not read file named \(soundName)")
                    return
                }
                do {
                    audioPlayer = try AVAudioPlayer(data: soundFile.data)
                    audioPlayer.play()
                } catch {
                    print("🤬 ERROR: \(error.localizedDescription)")
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            .fontWeight(.ultraLight)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
