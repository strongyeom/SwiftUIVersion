//
//  ComponentView.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/24.
//

import SwiftUI

struct ComponentView: View {
    
    let apple = ["iOS", "iPadOS", "macOS", "watchOS", "visionOS"]
    
    @State private var selectedIndex = 3
    var body: some View {
        // selection : 선택했을때 어떤 값을 defaults로 설정할 것인지
        // label : View를 만들어줬는데 시각적으로 보이지 않을때는 다른 OS에에서만 활용되는 경우임 ex) macOs
        List {
            Section {
                Picker(selection: $selectedIndex) {
                    ForEach(apple, id: \.self) { item in
                        Text(item)
                    }
                } label: {
                    Text("Picker Apple") // List로 wrap했을때만 보임
                }
            .pickerStyle(.automatic)
            }
            
            Section {
                Picker(selection: $selectedIndex) {
                    ForEach(apple, id: \.self) { item in
                        Text(item)
                    }
                } label: {
                    Text("Picker Apple") // List로 wrap했을때만 보임
                }
            .pickerStyle(.wheel)
            }
            
        }
        
        
          
        
    }
}

struct ComponentView_Previews: PreviewProvider {
    static var previews: some View {
        ComponentView()
    }
}
