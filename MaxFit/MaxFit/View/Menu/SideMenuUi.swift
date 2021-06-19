//
//  SideMenuUi.swift
//  MaxFit
//
//  Created by Chris Lin on 6/4/21.
//

import SwiftUI




struct SideMenu : View{
    let width: CGFloat
    let menuOpened: Bool
    let toggelMenu: () -> Void
    
    var body: some View{
        
        ZStack{
            //dimed backgroudn view
            GeometryReader{ _ in
                EmptyView()
                
            }
            .background(Color.white.opacity(0.25))
            .opacity(menuOpened ? 1 : 0)
            .animation(Animation.easeIn.delay(0.25))
            .onTapGesture {
                toggelMenu()
            }
            //menu content
            
            HStack{
                MenuContent().frame(width: width)
                    .offset(x: menuOpened ? 0 : -width)
                    .animation(.default)
                
                Spacer()
            }
        }
    }
}

struct MenuItem: Identifiable{
    var id = UUID()
    let text: String
    let imageName: String
}


struct MenuContent : View{
    let items: [MenuItem] = [
        MenuItem(text: "Home", imageName: "house"),
        MenuItem(text: "Profile", imageName: "person.circle"),
        MenuItem(text: "Activity", imageName: "bell"),
        MenuItem(text: "Workout", imageName: "flame"),
        MenuItem(text: "Food", imageName: "bolt.circle"),
        MenuItem(text: "Shop", imageName: "cart"),
        MenuItem(text: "Settings", imageName: "gear"),
        MenuItem(text: "Share", imageName: "square.and.arrow.up")
    ]
    
    @State var homePress = false
    @State var profilePress = false
    @State var activityPress = false
    @State var workoutPress = false
    @State var foodPress = false
    @State var shopPress = false
    @State var settingsPress = false
    @State var sharePress = false
    var body: some View{
        
       
        ZStack{
            Color(UIColor(red: 135/255, green: 206/255, blue: 250/255, alpha: 1))
            
            VStack(alignment: .leading, spacing: 0) {
                ForEach(items){ item in
                    
                        Button(action: {
                            if item.text == "Home"{
                                homePress = true
                            }
                            if item.text == "Profile"{
                                profilePress = true
                            }
                            if item.text == "Activity"{
                                activityPress = true
                            }
                            if item.text == "Workout"{
                                workoutPress = true
                            }
                            if item.text == "Food"{
                                foodPress = true
                            }
                            if item.text == "Shop"{
                                shopPress = true
                            }
                            if item.text == "Settings"{
                                settingsPress = true
                            }
                            if item.text == "Share"{
                                sharePress = true
                            }
                            
                        }, label: {
                            HStack{
                                Image(systemName: item.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.white)
                                    .frame(width: 32, height: 32, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Text(item.text)
                                    .font(.system(size: 22))
                                    .bold()
                                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.black)
                                    Spacer()
                            
                            }.padding()
                        }).fullScreenCover(isPresented: $homePress, content: {
                            profile()
                        })
                        .fullScreenCover(isPresented: $profilePress, content: {
                            profile()
                        })
                        .fullScreenCover(isPresented: $activityPress, content: {
                            profile()
                        })
                        .fullScreenCover(isPresented: $workoutPress, content: {
                            profile()
                        })
                        .fullScreenCover(isPresented: $foodPress, content: {
                            profile()
                        })
                        .fullScreenCover(isPresented: $shopPress, content: {
                            profile()
                        })
                        .fullScreenCover(isPresented: $settingsPress, content: {
                            profile()
                        })
                        .fullScreenCover(isPresented: $sharePress, content: {
                            profile()
                        })
                        
                            
                        
                    
                    Divider()
                    
                }
                
                Spacer()
            }
            .padding(.top, 15)
        }
    }
    
}

struct SideMenuUi: View {
    @State var menuOpened = false
    
    var body: some View {
        
        ZStack{
            if !menuOpened{
                Button(action: {
                    menuOpened.toggle()
                }){
                    Image(systemName: "chevron.right.circle.fill").font(.largeTitle).foregroundColor(.blue)
                }.offset(x:-150, y:-360)
            }
            
            SideMenu(width: UIScreen.main.bounds.width/1.6, menuOpened: menuOpened, toggelMenu: toggleMenu)
                
            
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    func toggleMenu() {
        menuOpened.toggle()
    }
}

struct SideMenuUi_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuUi()
            .previewDevice("iPhone 12 Pro")
    }
}
