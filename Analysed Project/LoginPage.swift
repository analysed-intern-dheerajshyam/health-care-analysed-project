//
//  LoginPage.swift
//  Analysed Project
//
//  Created by Dheeraj Shyam on 14/01/24.
//

import SwiftUI

struct Frame_1410112919 : View {
    
    @State var email_val:String = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("Email")
                    .font(.system(size: 17))
                    .foregroundColor(Color(uiColor: UIColor(hex: "2B1857")!))
                    .bold()
                Spacer()
            }.padding(.leading)
            
            HStack {
                RoundedRectangle(cornerRadius: 4)
                .frame(width: 330, height: 50)
                .foregroundColor(Color(uiColor: UIColor(hex: "F8F4FF")!))
                .overlay {
                    TextField("", text:self.$email_val)
                        .padding(.leading)
                        .padding(.trailing)
                }
                
                Spacer()
            }.padding(.leading)
            
        }.padding(.top, 60)
        .padding()
    }
}

struct Frame_1410112918 : View {
    
    @State var password_val:String = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("Password")
                    .font(.system(size: 17))
                    .foregroundColor(Color(uiColor: UIColor(hex: "2B1857")!))
                    .bold()
                Spacer()
            }.padding(.leading)
            
            HStack {
                RoundedRectangle(cornerRadius: 4)
                .frame(width: 330, height: 50)
                .foregroundColor(Color(uiColor: UIColor(hex: "F8F4FF")!))
                .overlay {
                    TextField("", text:self.$password_val)
                        .padding(.leading)
                        .padding(.trailing)
                }
                
                Spacer()
            }.padding(.leading)
            
            HStack {
                Spacer()
                Text("Forgot password?")
                    .font(.system(size: 12))
                    .foregroundColor(Color(uiColor: UIColor(hex: "2B1857")!))
                    .bold()
            }
            
        }.padding()
    }
}

struct LoginPage: View {
    var body: some View {
        VStack {
            Text("Sign In")
                .multilineTextAlignment(.center)
                .bold()
                .font(.system(size: 35))
                .padding(.top, 40)
            
            Frame_1410112919()
            Frame_1410112918()
            
            Button("Next \(Image(systemName: "arrow.right"))") {}
                .foregroundColor(.white)
                .bold()
                .font(.system(size: 17))
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 210, height: 50)
                        .foregroundStyle(Color(uiColor: UIColor(hex: "614D8F")!))
                }.padding(.top, 60)
            
            Text("Other Login Options")
                .font(.system(size: 15))
                .padding(.top, 50)
            
            HStack(spacing: 30) {
                Image(.googleLogo)
                    .resizable()
                    .frame(width: 30, height: 30)
                
                Image(.fbLogo)
                    .resizable()
                    .frame(width: 30, height: 30)
                
                Image(.appleLogo)
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            
            HStack {
                Spacer()
                VStack(spacing: 8) {
                    Text("Don't have an account?")
                        .font(.system(size: 15))
                        .padding(.top, 50)
                        .foregroundStyle(Color(uiColor: UIColor(hex: "614D8F")!))
                        .bold()
                    Text("Register Here")
                        .font(.system(size: 15))
                        .foregroundStyle(Color(uiColor: UIColor(hex: "2B1857")!))
                        .bold()
                    
                }.multilineTextAlignment(.center)
            }.padding(.trailing)
            
            Spacer()
        }
    }
}

#Preview {
    LoginPage()
}
