//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    @State var num: Double = 50
    @State var toggle = false
    @State var min = 0
    @State var max = 100
    var body: some View {
        VStack() {
            HStack() {
                VStack() {
                    Text("High Score")
                    Text("0")
                }
                .padding(.leading, 20)
                Spacer()
                VStack() {
                    Text("Current Level")
                    Text("1")
                }
                .padding(.trailing, 20)
            }
            Spacer()
            .padding(.top, 100)
            
            // hw3 begins here
            
            VStack() {
                Text("Move Slider To")
                Text("25")
            }
            .font(.system(size: 30))
            .padding()
            
            VStack() {
                Slider(value: $num, in: 0...100)
                    .padding(.leading, 40)
                    .padding(.trailing, 40)
                
                Button("Check") {
                    print("Check")
                }
            }
            .padding(.bottom, 250)
            
            Spacer()
            
            Text("Exact Mode?")
            
            Toggle("", isOn: $toggle).labelsHidden()
            
        }
    }
}

