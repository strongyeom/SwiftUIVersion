//
//  ExampleBadgeWrapper.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI

private struct ExampleBadgeWrapper: ViewModifier {
    let count: Int
    func body(content: Content) -> some View {
        content
            .badge(count)
    }
}

extension View {
    func exampleBadgeCount(_ count: Int) -> some View {
        modifier(ExampleBadgeWrapper(count: count))
    }
}
