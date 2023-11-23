//
//  TabBadgeView.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI

struct TabBadgeView: View {
    var body: some View {
        TabView {
            ZStack {
                Color.red
                Text("1")
                    .tabItem {
                        Label("홈", systemImage: "house")
                    }
                .badge(30)
            } // 15+
            ContentView()
                .tabItem {
                    Label("리스트", systemImage: "doc.fill")
                }
                // Custom modifier를 사용하여 Version에 따른 분기 처리하기
                .badges(20)
            Text("3")
                .tabItem {
                    Label("마이페이지", systemImage: "person")
                }
                .badges(5)
        }
        // tabViewStyle에 따라 pageControl(Label이 없다면 기본형인 O O O 이렇게 나옴)
        .tabViewStyle(.page)
    }
}

struct TabBadgeView_Previews: PreviewProvider {
    static var previews: some View {
        TabBadgeView()
    }
}
