//
//  MainView.swift
//  HowYa
//
//  Created by Joel Wong on 15/10/22.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewRouter: ViewRouter
    
    @State var showPopUp = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                switch viewRouter.currentPage {
                case .home:
                    HomeView()
                case .friends:
                    FriendEmotionView()
                case .create:
                    NavigationView{
                        ReflectionView()
                    }
                case .map:
                   WholeMapView()
                case .me:
                    Text("Me")
                }
                Spacer()
                ZStack {
                    if showPopUp {
                        PlusMenu(widthAndHeight: geometry.size.width/7)
                            .offset(y: -geometry.size.height/6)
                    }
                    HStack {
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .home, width: geometry.size.width/5, height: geometry.size.height/32, systemIconName: "house.fill", tabName: "Home")
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .friends, width: geometry.size.width/5, height: geometry.size.height/32, systemIconName: "person.2.fill", tabName: "Friends")
                        VStack{
                            ZStack {
                                Circle()
                                    .frame(width: geometry.size.width/7, height: geometry.size.width/7)
                                    .shadow(radius: 4)
                                    .foregroundColor(.white)
                                Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width/7-6 , height: geometry.size.width/7-6)
                                    .foregroundColor(Color("DarkPurple"))
                                    .rotationEffect(Angle(degrees: showPopUp ? 90 : 0))
                            }
                                .offset(y: -geometry.size.height/8/2)
                        }.onTapGesture {
                            viewRouter.currentPage = .create
                        }
                        
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .map, width: geometry.size.width/5, height: geometry.size.height/32, systemIconName: "map.fill", tabName: "Map")
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .me, width: geometry.size.width/5, height: geometry.size.height/32, systemIconName: "person.crop.circle", tabName: "Me")
                    }
                        .frame(width: geometry.size.width, height: geometry.size.height/8)
                    .background(Color("TabBarBackground").shadow(radius: 2))
                }
            }
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewRouter: ViewRouter())
            .preferredColorScheme(.light)
    }
}

struct PlusMenu: View {
    
    let widthAndHeight: CGFloat
    
    var body: some View {
        HStack(spacing: 50) {
            ZStack {
                Circle()
                    .foregroundColor(Color("DarkPurple"))
                    .frame(width: widthAndHeight, height: widthAndHeight)
                Image(systemName: "record.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(15)
                    .frame(width: widthAndHeight, height: widthAndHeight)
                    .foregroundColor(.white)
            }
            ZStack {
                Circle()
                    .foregroundColor(Color("DarkPurple"))
                    .frame(width: widthAndHeight, height: widthAndHeight)
                Image(systemName: "folder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(15)
                    .frame(width: widthAndHeight, height: widthAndHeight)
                    .foregroundColor(.white)
            }
        }
            .transition(.scale)
    }
}

struct TabBarIcon: View {
    
    @StateObject var viewRouter: ViewRouter
    let assignedPage: Page
    
    let width, height: CGFloat
    let systemIconName, tabName: String

    var body: some View {
        VStack {
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 16)
            Text(tabName)
                .font(.custom("Lexend-Regular", size: 12))
            Spacer()
        }
            .padding(.horizontal, -4)
            .onTapGesture {
                viewRouter.currentPage = assignedPage
            }
            .foregroundColor(viewRouter.currentPage == assignedPage ? Color("TabBarHighlight") : .gray)
    }
}
