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

                if counter % 2 == 0 {
                    message = "You are Great!"
                    imagename = "hand.thumbsup"
                } else {
                    message = "You are Awesome!"
                    imagename = "sun.max.fill"
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
