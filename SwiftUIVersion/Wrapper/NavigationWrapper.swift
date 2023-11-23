//
//  NavigationWrapper.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI

// Navigation을 통으로 wrapper
// 제네릭을 사용하여 재사용성을 높임
struct NavigationWrapper<Content: View> : View {
    
    var content: Content
    
    // 버튼 처럼 body에서 사용하기 위해서 view로 return하기 위한 과정이 필요함
    // some View를 사용할때 내부적으로 있지만 wrapper를 사용할때는 초기화 할때 명시적으로 ViewBuilder를 붙여줘야함
    init(@ViewBuilder content: () -> Content) {
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
