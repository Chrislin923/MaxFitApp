//
//  profile.swift
//  MaxFit
//
//  Created by Chris Lin on 6/4/21.
//

import SwiftUI

struct profile: View {
    var body: some View {
        
        ZStack {
            
            ScrollView {
                VStack(alignment: .leading){
                    Text("MaxFit")
                        .font(.title).offset(x:140)
                    
                    Image("cover").resizable().aspectRatio(contentMode: .fit)
                    
                    UserImage().offset(y:-100).padding(.bottom, -120)
                    
                    HStack{
                        Text("Chris Lin").font(.title).padding(10)
                        Spacer()
                        VStack{
                            Text("Age: 22").offset(x:5)
                            Text("Gender: Male")
                            Text("Height: secret")
                            Text("Weight: secret")
                        }
                        
                    }
                    Divider()
                    VStack{
                        Text("My Bio:").font(.headline)
                        Spacer().frame(maxHeight:80)
                        Text("My Goal:").font(.headline).offset(x:5, y:20)
                    }.padding(-5)
                    
                    
                    
                    
                    HStack{
                        ZStack{
                            
                            fillCircle().frame(width: 180, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).offset(y: 40)
                            Text("-5kg").offset(x:-55, y:-60)
                            Text("-2.5kg")
                        }
                        
                        ZStack{
                            
                            fillCircle().frame(width: 180, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).offset(y: 40)
                            Text("2550 KCal(Daily)").offset(x:-55, y:-60)
                            Text("1275 KCal")
                        }
                    }.frame(height:200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    Text("Posts:").font(.headline)
                    VStack{
                        HStack{
                            UserImage().frame(width: 50, height: 50, alignment: .center)
                            Text("Chris Lin")
                            Spacer()
                        }
                        Image("dish").resizable()
                            .aspectRatio(contentMode: .fit)
                        Text("My lunch!!!(tbh never like this lol)")
                        HStack{
                            
                            LikeButton()
                            HStack{
                                Image(systemName: "bubble.right").offset(x:5)
                                Text("comment")
                            }
                            HStack{
                                Image(systemName: "paperplane").offset(x:5)
                                Text("share")
                            }
                            
                            
                        }
                       
                    }
                    
                    
                    VStack{
                        HStack{
                            UserImage().frame(width: 50, height: 50, alignment: .center)
                            Text("Chris Lin")
                            Spacer()
                        }
                        Image("workout")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Text("Keep Grinding!")
                        HStack{
                    
                            LikeButton()
                            HStack{
                                Image(systemName: "bubble.right").offset(x:5)
                                Text("comment")
                            }
                            HStack{
                                Image(systemName: "paperplane").offset(x:5)
                                Text("share")
                            }
                            
                            
                        }
                       
                    }
                   
                    
                    
                }
                .padding(10)
            }
            SideMenuUi()
        }
    }
}

struct profile_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            profile()
                .previewDevice("iPhone 12 Pro")
        
        }
    }
}
