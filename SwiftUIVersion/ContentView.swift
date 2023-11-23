//
//  ContentView.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foreground(color: .red) // 추상화 시킨 #available 사용
            
            
            Button {
                
            } label: {
                Text("Button")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.gray)
            }
            
            
            
            Text("iOS")
                .asPointBackgroundText()
            Text("SwiftUI")
                .asPointBackgroundText()
            Text("UIKit")
                .asPointBackgroundText()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
