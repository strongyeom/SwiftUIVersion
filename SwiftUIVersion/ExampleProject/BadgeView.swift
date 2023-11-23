//
//  BadgeView.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI

struct BadgeView: View {
    var body: some View {
       
        TabView {
            ForEach(TabEnum.allCases, id: \.self) { item in
                item.content
                    .tabItem {
                        VStack {
                            Text("\(item.rawValue)")
                            item.image
                        }
                    }
                    .exampleBadgeCount(10)
                    
            }
        }
           
    }
}

extension BadgeView {
    private enum TabEnum: String, CaseIterable {
        case home
        case list
        case person
        
        var image: Image {
            switch self {
            case .home:
                return Image(systemName: "house")
            case .list:
                return Image(systemName: "doc.fill")
            case .person:
                return Image(systemName: "person")
            }
        }
        
        @ViewBuilder // body가 아닌곳에서 사용할때는 @ViewBuilder 을 사용해야한다.
        var content: some View {
            switch self {
            case .home:
                ExampleContentView()
            case .list:
                ZStack {
                    Color.red
                    Text("123")
                }
            case .person:
                ZStack {
                    Color.yellow
                    Text("4566")
                }
            }
        }
    }
}

struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}
