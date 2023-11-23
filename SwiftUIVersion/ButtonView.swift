//
//  ButtonView.swift
//  SwiftUIVersion
//
//  Created by 염성필 on 2023/11/23.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack {
            
            text
                .wrapToButton {
                    print("=text==")
                }
            image
                .wrapToButton {
                    print("=---image==")
                }
            rectangle
                .wrapToButton {
                    print("=r---ectangle==")
                }
            
          
            // action과 같은것은 body에 담아서 사용하는것이 더 코드를 이해하기 쉬움
//            text
//                .onTapGesture {
//                    print("text")
//                }
//
//            image
//            rectangle
        }
    }
    
    /*
     property vs func
     매개변수의 유무 -> 단지 View만 그려 줄것이냐 데이터를 전달 받을 것이냐
     */
    
    var text: some View {
        Text("Text")
            .padding(30)
            .background(.black)
            .foreground(color: .white)
            .font(.largeTitle)

    }
    
    var image: some View {
        Image(systemName: "flame")
            .scaleEffect(2)
            .padding()
//            .onTapGesture {
//                print("image")
//            }
    }
    
    var rectangle: some View {
        Rectangle()
            .padding()
            .frame(height: 100)
//            .onTapGesture {
//                print("rectangle")
//            }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
