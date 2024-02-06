//
//  ProfileView.swift
//  Seconds Screens
//
//  Created by Dheeraj Shyam on 03/02/24.
//

import SwiftUI

struct LandingIntro : View {
    var body: some View {
        HStack(spacing: 15) {
            Circle()
                .fill(Color(uiColor: UIColor(hex: "D9D9D9", alpha: 1.0)!))
                .frame(width: 60, height: 60)
                .padding(.leading)
            
            VStack(spacing: 3) {
                HStack {
                    Text("User Name")
                        .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                        .font(.custom("cabin", size: 24))
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                }
                
                HStack {
                    Text("Personal Details")
                        .font(.custom("cabin", size: 14))
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.white)
                    
                    Spacer()
                }
                
                Spacer()
            }.padding(.top, 30)
            
            Spacer()
        }.padding(.leading, 15)
    }
}

struct ProfileMenuItem: View {
    let imageName: String
    let itemName: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        HStack {
            Image(systemName: self.imageName)
                .resizable()
                .frame(width: self.width, height: self.height)
                .foregroundStyle(Color(
                    uiColor: UIColor(hex: "FFBD82", alpha: 1.0)!
                ))
            
            Text(self.itemName)
                .foregroundStyle(Color(
                    uiColor: UIColor(hex: "FFBD82", alpha: 1.0)!
                )).font(.custom("cabin", size: 18))
                .padding(.leading, 15)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .resizable()
                .frame(width: 6, height: 12)
                .foregroundStyle(Color(
                    uiColor: UIColor(hex: "FFBD82", alpha: 1.0)!
                ))
            
            
        }.padding(.leading)
        .bold()
    }
}

struct ProfileMenuOptions: View {
    @State var menuOptions:[ProfileMenuItem] = [
        ProfileMenuItem(
            imageName: "square.and.pencil",
            itemName: "Body Measurement",
            width: 22,
            height: 22
        ),
        ProfileMenuItem(
            imageName: "shield",
            itemName: "Form Check Tool",
            width: 17.6,
            height: 22
        ),
        ProfileMenuItem(
            imageName: "menubar.rectangle",
            itemName: "Calorie Tracker",
            width: 22,
            height: 22
        ),
        ProfileMenuItem(
            imageName: "lock",
            itemName: "Connect to Trainer",
            width: 18,
            height: 22
        ),
        ProfileMenuItem(
            imageName: "questionmark.circle",
            itemName: "Privacy Policy",
            width: 20,
            height: 20
        ),
        ProfileMenuItem(
            imageName: "questionmark.circle",
            itemName: "Reset Password",
            width: 20,
            height: 20
        ),
        ProfileMenuItem(
            imageName: "power",
            itemName: "Logout",
            width: 20,
            height: 20
        )
    ]
    
    var body: some View {
        VStack(spacing: 15) {
            ForEach(0..<self.menuOptions.count, id: \.self) { index in
                self.menuOptions[index]
                if(!(index == (self.menuOptions.count - 1))) {
                    Rectangle()
                        .fill(Color(
                            uiColor: UIColor(hex: "FFBD82", alpha: 0.3)!
                        )).frame(height: 1)
                }
            }
        }.padding(.top, 30)
        .padding()
    }
}

struct ProfileView: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("Profile")
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .font(.custom("cabin", size: 40))
                    .padding(.top, 15)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(uiColor: UIColor(hex: "A0A0A0", alpha: 0.4)!))
                    .frame(width: 350, height: 120)
                    .overlay {
                        LandingIntro()
                    }
                
                ProfileMenuOptions()
                
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

#Preview {
    ProfileView()
}
