//
//  ExampleContentView.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI

struct ExampleContentView: View {
    var body: some View {
        
        VStack {
//            Text("Hello, World!")
//                .modifier(ExamplePointBackgroundText(color: .yellow))
//            Text("Hello, World!")
//                .modifier(ExamplePointBackgroundText(color: .cyan))
//            Text("Hello, World!")
//                .modifier(ExamplePointBackgroundText(color: .gray))
            Text("Hello, World!")
                .asForeground(color: .yellow)
        }
       
        
    }
}

struct ExampleContentView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleContentView()
    }
}
