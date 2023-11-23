//
//  ExampleNaviBarView.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI

struct ExampleNaviBarView: View {
    var body: some View {
        ExampleNavigationStackWrapper {
            Text("123")
                .navigationBars {
                    Image(systemName: "flame")
                } trailing: {
                    Image(systemName: "star")
                }

        }
    }
}

struct ExampleNaviBarView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleNaviBarView()
    }
}
