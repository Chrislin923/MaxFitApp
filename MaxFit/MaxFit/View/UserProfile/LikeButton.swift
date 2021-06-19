//
//  LikeButton.swift
//  MaxFit
//
//  Created by Chris Lin on 6/4/21.
//

import SwiftUI

struct LikeButton: View {
    @State private var isLiked = false
    
    var body: some View{
        HStack {
            
            HeartButton(isLiked: $isLiked)
            Text(isLiked ? "Unlike" : "Like")
        }
    }
    
}

struct HeartButton: View {
    @Binding var isLiked: Bool
    
    private let animationDuration: Double = 0.1
    private var animationScale: CGFloat{
        isLiked ? 0.7 : 1.3
    }
    @State private var animate = false
    
    var body: some View {
        Button(action: {
            animate = true
            DispatchQueue.main.asyncAfter(deadline: .now() + animationDuration, execute: {
                animate = false
                isLiked.toggle()
            })
            
        }, label: {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20)
                .foregroundColor(isLiked ? .red: .gray)
        })
        .scaleEffect(animate ? animationScale : 1 )
        .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/(duration: animationDuration))
    }
}



struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton()
    }
}
