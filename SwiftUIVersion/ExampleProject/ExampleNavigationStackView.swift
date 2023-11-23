//
//  ExampleNavigationStackView.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI

struct ExampleNavigationStackView: View {
    var body: some View {
        ExampleNavigationStackWrapper {
            Text("123")
                .navigationTitle("메인")
        }
    }
}

struct ExampleNavigationStackView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleNavigationStackView()
    }
}
