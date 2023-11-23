//
//  NavigationBarWrapper.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI

struct NavigationBarWrapper<Leading: View, Trailing: View>: ViewModifier {
    
    let leading: Leading
    let trailing: Trailing
    
    // View 를 다룰때랑 ViewModifier를 다룰때 차이점 : @ViewBuilder
    init(@ViewBuilder leading: () -> Leading, @ViewBuilder trailing: () -> Trailing) {
        self.leading = leading()
        self.trailing = trailing()
    }
    
    
    func body(content: Content) -> some View {
        if #available(iOS 14.0, *) {
            content
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading, content: { leading }) // {} 쓴이유 : 함수의 형태로 구성되어야함
                    ToolbarItem(placement: .navigationBarTrailing, content:  { trailing } )
                }
        } else {
            content
                .navigationBarItems(leading: leading, trailing: trailing) // View의 타입은 단지 View프로토콜만 따르면 되기 때문에 { } 안적음
        }
    }
}


extension View {
    func navigationBar(@ViewBuilder leading: () -> some View,
                       @ViewBuilder trailing: () -> some View) -> some View {
        modifier(NavigationBarWrapper(leading: leading, trailing: trailing))
    }
}
