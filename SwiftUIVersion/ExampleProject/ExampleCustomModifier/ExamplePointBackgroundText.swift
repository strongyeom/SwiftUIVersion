//
//  ExamplePointBackgroundText.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI

private struct ExamplePointBackgroundText: ViewModifier {
    
    let color: Color
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(color)
            .padding()
            .background(.red)
            .clipShape(Capsule())
    }
}

extension View {
    func asForeground(color: Color) -> some View {
        modifier(ExamplePointBackgroundText(color: color))
    }
}
