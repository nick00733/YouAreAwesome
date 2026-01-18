//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Nick Nedjat on 11.01.26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imagename = ""
    @State private var counter = 0

    var body: some View {
        VStack {
            Spacer()

            Image(systemName: imagename)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)

            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)

            Spacer()

            Button("Press Me!") {
                counter += 1
                let message1 = "You are Great!"
                let message2 = "You are Awesome!"
                let image1 = "hand.thumbsup"
                let image2 = "sun.max.fill"
                
                //if counter % 2 == 0 {
                //    message = message1
                //    imagename = image1
                //} else {
                //    message = message2
                //    imagename = image2
                //}
                message = (message == message1 ? message2 : message1)
                imagename = (imagename == image1 ? image2 : image1)
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
