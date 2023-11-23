//
//  ExampleNavigationStackWrapper.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI

struct ExampleNavigationStackWrapper<Content: View>: View {
    
    let content: Content
    
    init(content: @escaping () -> Content) {
        self.content = content()
    }
    
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                content
            }
        } else {
            NavigationView {
                content
            }
        }
    }
}
