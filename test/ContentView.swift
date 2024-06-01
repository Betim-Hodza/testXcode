//
//  ContentView.swift
//  test
//
//  Created by Betim Hodza on 6/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Screen(
                title: "Social Coding",
                text: "we love momo!",
                imageName: "house"
            )
        }
    }
}

struct Screen: View {
    
    let title: String
    let text: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: .center)
                .padding()
            
            Text(text)
                .font(.system(size: 30, weight: .light, design: .default))
                .padding()
            
            NavigationLink(
                destination: Screen(
                    title: "About Us",
                    text: "What is MOBI?",
                    imageName: "globe"
                ),
                label: {
                    ContinueButton(color: .mint)
                }
            )
        }
        .navigationTitle(title)

    }
}

struct ContinueButton: View {
    
    let color: Color
    
    var body: some View {
        Text("Continue")
            .frame(width: 200, height: 50, alignment: .center)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

#Preview {
    ContentView()
}
