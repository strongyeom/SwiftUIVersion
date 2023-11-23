//
//  ButtonWrapper.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI

private struct ButtonWrapper : ViewModifier {
    
    // 사용하려는 View에서 이벤트를 받기위해 변수 생성
    let action: () -> Void
    
    
    func body(content: Content) -> some View {
        Button(action: action, label: { content })
            .buttonStyle(.plain)
    }
}

extension View {
    func wrapToButton(action: @escaping () -> Void) -> some View {
        modifier(ButtonWrapper(action: action))
    }
}
