//
//  BadgeWrapper.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI
// if #available을 추상화 시키기
private struct BadgeWrapper: ViewModifier {
    
    let badgeCount: Int
    
    func body(content: Content) -> some View {
        if #available(iOS 15.0, *) {
            content
                .badge(badgeCount)
        } else {
            // badge를 사용하지 않을때 View를 반환
            content
        }
    }
    
}

extension View {
    func badges(_ badgeCount: Int) -> some View {
        modifier(BadgeWrapper(badgeCount: badgeCount))
    }
}
