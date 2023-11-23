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
            ForEach(TabItem.allCases, id:\.hashValue) { item in
                item.rootView
                    .tabItem {
                        item.image
                    }
            }
        }
        // tabViewStyle에 따라 pageControl(Label이 없다면 기본형인 O O O 이렇게 나옴)
//        .tabViewStyle(.page)
    }
}

extension TabBadgeView {
    // 열거형으로 구분 - 현재 파일 내에서만 사용하기 때문에 접근 제어자 설정
    private enum TabItem: CaseIterable {
        case home
        case favorite
        case list
        case setting
        
        var image: Image {
            switch self {
            case .home:
                return Image(systemName: "house")
            case .favorite:
                return Image(systemName: "star")
            case .list:
                return Image(systemName: "doc.fill")
            case .setting:
                return Image(systemName: "gear")
            }
        }
        
        @ViewBuilder // body가 아닌곳에서 View에 직접적으로 UI를 그릴때는 ViewBuilder를 사용함
        var rootView: some View {
            switch self {
            case .home:
                ContentView()
            case .favorite:
                ZStack {
                    Color.red
                    Text("ROOT VIEW")
                }
            case .list:
                ZStack {
                    Color.yellow
                    Text("ROOT VIEW")
                }
            case .setting:
                ZStack {
                    Color.gray
                    Text("ROOT VIEW")
                }
            }
           
        }
        
        
    }
    
}

struct TabBadgeView_Previews: PreviewProvider {
    static var previews: some View {
        TabBadgeView()
    }
}
