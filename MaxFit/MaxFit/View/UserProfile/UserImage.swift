//
//  UserImage.swift
//  MaxFit
//
//  Created by Chris Lin on 6/3/21.
//

import SwiftUI

struct UserImage: View {
    var body: some View {
        Image("icon").resizable().aspectRatio(contentMode:.fit).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).frame(width: 150).overlay(Circle().stroke( Color.blue,lineWidth: 3)).shadow(radius: 25)
        
    }
}

struct UserImage_Previews: PreviewProvider {
    static var previews: some View {
        UserImage()
            .previewDevice("iPhone 12 Pro")
    }
}
