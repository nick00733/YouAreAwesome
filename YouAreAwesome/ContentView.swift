//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Nick Nedjat on 11.01.26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0

    var body: some View {
        VStack {
            Spacer()

            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)

            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)

            Spacer()

            Button("Show message!") {
                let message1 = "You are Great!"
                let message2 = "You are Awesome!"
                
                message = (message == message1 ? message2 : message1)
                //imageName = (imageName == image1 ? image2 : image1)
                imageName = "image"+String(imageNumber)
                
                if imageNumber < 9 {
                    imageNumber += 1
                } else {
                    imageNumber = 0
                }
                
                print(imageNumber)
                
                
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
