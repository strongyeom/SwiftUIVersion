//
//  PointBackgroundText.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI


// ViewModifier : Custom Modifier를 생성할 수 있도록 도와주는 프로토콜
private struct PointBackgroundText: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .padding(10)
            .foregroundStyle(.white)
            .background(.purple)
            .clipShape(Capsule())
    }
}

// 반복되는 .modifier를 한번 더 추상화하기
// View에서 func을 호출하게 되면 메서드내에서 부르게 됨 => 접근제어자 private으로 최적화 가능 => 다른 View에서는 PointBackgroundText 인스턴스를 사용할 수없고 현재 파일 내에서만 사용한다는 것을 알 수 있음
extension View {
    func asPointBackgroundText() -> some View {
        modifier(PointBackgroundText())
    }
}
