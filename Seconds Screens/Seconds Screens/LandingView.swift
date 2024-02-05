//
//  LandingView.swift
//  Seconds Screens
//
//  Created by Dheeraj Shyam on 05/02/24.
//

import SwiftUI

struct CarouselView1 : View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                
                Spacer()

                Image(.running)
                    .resizable()
                    .frame(width: 280, height: 280)
                
                Text("Welcome")
                    .foregroundStyle(.white)
                    .bold()
                    .font(.custom("cabin", size: 36))
                
                Text("Create a workout Plan")
                    .foregroundStyle(.white)
                    .bold()
                    .font(.custom("cabin", size: 26))
                
                Text("to stay fit")
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .bold()
                    .font(.custom("cabin", size: 26))
                
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .frame(width: 150, height: 40)
                    .shadow(radius: 6)
                    .padding(.top, 15)
                
                    .overlay {
                        Text("Next")
                            .font(.system(size: 24))
                            .padding(.top)
                            .foregroundStyle(.white)
                    }
               
                Spacer()
                
            }.frame(width: geo.size.width, height: geo.size.height)
            .background {
                ZStack {
                    Color(red: 0.13, green: 0.13, blue: 0.13)
                        .ignoresSafeArea(.all)
                    
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 523, height: 563)
                        .background(Color(red: 1, green: 0.74, blue: 0.51).opacity(0.39))
                        .blur(radius: 700)
                }
            }.aspectRatio(contentMode: .fit)
        }
    }
}

struct CarouselView2 : View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                
                Spacer()

                Image(.stretching)
                    .resizable()
                    .frame(width: 340, height: 280)
                
                Spacer()
                
                Text("Find the right workout")
                    .foregroundStyle(.white)
                    .bold()
                    .font(.custom("cabin", size: 26))
                
                Text("for what you need")
                    .foregroundStyle(.white)
                    .bold()
                    .font(.custom("cabin", size: 26))
                
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .frame(width: 150, height: 40)
                    .shadow(radius: 6)
                    .padding(.top, 15)
                
                    .overlay {
                        Text("Next")
                            .font(.system(size: 24))
                            .padding(.top)
                            .foregroundStyle(.white)
                    }
               
                Spacer()
                
            }.frame(width: geo.size.width, height: geo.size.height)
            .background {
                ZStack {
                    Color(red: 0.13, green: 0.13, blue: 0.13)
                        .ignoresSafeArea(.all)
                    
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 523, height: 563)
                        .background(Color(red: 1, green: 0.74, blue: 0.51).opacity(0.39))
                        .blur(radius: 700)
                }
            }.aspectRatio(contentMode: .fit)
        }
    }
}

struct CarouselView3 : View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                
                Spacer()

                Image(.amico)
                    .resizable()
                    .frame(width: 340, height: 280)
                
                Spacer()
                
                Text("Lets Do workout and")
                    .foregroundStyle(.white)
                    .bold()
                    .font(.custom("cabin", size: 26))
                
                Text("live healthy with us")
                    .foregroundStyle(.white)
                    .bold()
                    .font(.custom("cabin", size: 26))
                
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .frame(width: 150, height: 40)
                    .shadow(radius: 6)
                    .padding(.top, 15)
                
                    .overlay {
                        Text("Start Now")
                            .font(.system(size: 24))
                            .padding(.top)
                            .foregroundStyle(.white)
                    }
               
                Spacer()
                
            }.frame(width: geo.size.width, height: geo.size.height)
            .background {
                ZStack {
                    Color(red: 0.13, green: 0.13, blue: 0.13)
                        .ignoresSafeArea(.all)
                    
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 523, height: 563)
                        .background(Color(red: 1, green: 0.74, blue: 0.51).opacity(0.39))
                        .blur(radius: 700)
                }
            }.aspectRatio(contentMode: .fit)
        }
    }
}

struct LandingView: View {
    @State var tabViews: [AnyView] = [
        AnyView(CarouselView1()),
        AnyView(CarouselView2()),
        AnyView(CarouselView3())
    ]
    
    var body: some View {
        VStack {
            TabView {
                ForEach(0..<self.tabViews.count, id: \.self) { index in
                    self.tabViews[index]
                }
            }.tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .automatic))
            .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    LandingView()
}
