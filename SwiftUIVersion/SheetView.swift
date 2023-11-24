//
//  SheetView.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/24.
//

import SwiftUI

struct SheetView: View {
    
    // 화면을 띄울지 말지 결정하는 프로퍼티 래퍼
    @State private var showSheet = false
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                ShareLink(item: "https://www.naver.com") {
                    Text("링크 공유하기")
                }
                
                Text("Hello, World!")
                    .wrapToButton {
                        showSheet = true
                }
                
            }
        }
        .sheet(isPresented: $showSheet) {
            ComponentView()
                // 16.0+
//                .presentationDetents([.medium, .large])
                .presentationDetents([PresentationDetent.small])
                // sheet 상단의 인디케이터를 보여줄건지 말건지
                .presentationDragIndicator(.hidden)
        }
   
        
        
    }
}

// 고정된 형태로 쓸때 커스텀하게 만들 수 있음
extension PresentationDetent {
    static let small = Self.height(200)
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
