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
    @State private var counter = 0

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

            Button("Press Me!") {
                counter += 1
                let message1 = "You are Great!"
                let message2 = "You are Awesome!"
                let image1 = "image0"
                let image2 = "image1"
                
                message = (message == message1 ? message2 : message1)
                imageName = (imageName == image1 ? image2 : image1)
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
