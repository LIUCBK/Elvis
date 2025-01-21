//
//  ContentView.swift
//  Elvis
//
//  Created by 刘佳雨 on 2025/1/21.
//

import SwiftUI

struct ContentView: View {
    @State var message = ""
    @State var pic = ""
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .foregroundStyle(.purple)
                .fontWeight(.black)
            Spacer()
            
            Image(systemName:pic)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Text(message)
                .font(.largeTitle)
                .foregroundStyle(.purple)
                .fontWeight(.black)
            Spacer()
            
            HStack{
                Button("Peace"){
                    pic = "peacesign"
                    message = "Peace"
                }
                Button("Love"){
                    pic = "heart"
                    message = "Love"
                }
                Button("Understanding"){
                    pic = "lightbulb"
                    message = "Understanding"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
