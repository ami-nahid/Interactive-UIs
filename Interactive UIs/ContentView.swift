//
//  ContentView.swift
//  Interactive UIs
//
//  Created by Scholar on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "hello"
    
    var body: some View {
        NavigationStack {
            
            
            VStack {
                Text (textTitle)
                Text ("this is my interactive UI 🎀")
                TextField("type your name here!", text: $name)
                    .multilineTextAlignment(.center)
                Button("click me!") {
                    textTitle = "hey, \(name)"
                    name = ""
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
