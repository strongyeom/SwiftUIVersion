//
//  MainView.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI

struct MainView: View {
    
    var sampleTest = false
    
    var body: some View {
        // NavigationView(content: <#T##() -> View#>) 클로저 안에 들어가는것과 동일하게 만들어주기 위해 wrapper의 init에 만들어줌 또한 ZStack이 올지 어떤게 올지 모르기 때문에 제네릭으로 설정 SwiftUI에서는 T 대신 Content를 사용
        NavigationWrapper {
            Text("이것이 네비이다.")
            sample
        }
    }
    // 15.0 이상부터는 ViewBuilder가 없어졌지만 ⭐️조건문⭐️이 있을때는 붙여야함
    @ViewBuilder
    var sample: some View {
        
        if sampleTest {
            Text("안녕하세요")
        } else {
            Text("여보세요")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
