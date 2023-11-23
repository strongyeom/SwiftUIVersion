//
//  ForegroundWrapper.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI

// if #available을 추상화 시키기
private struct ForegroundWrapper: ViewModifier {
    
    let color: Color
    
    func body(content: Content) -> some View {
        if #available(iOS 15.0, *) {
            content
                .foregroundStyle(color)
        } else {
            content
                .foregroundColor(color)
        }
    }
    
}

extension View {
    func foreground(color: Color) -> some View {
        modifier(ForegroundWrapper(color: color))
    }
}
