import SwiftUI

struct SignInFields : View {
    
    @State var email:String = ""
    @State var password:String = ""
    
    
    var body : some View {
        
        /*
            Email field.
         */
        
        TextField(text: self.$email) {
            Text("Email")
                .foregroundStyle(
                    Color(uiColor: UIColor(hex: "939393", alpha: 1.0)!)
                ).bold()
        }.frame(width: 350, height: 50)
        .padding(.leading, 21)
        .background {
            RoundedRectangle(cornerRadius: 40)
                .fill(
                    Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                ).frame(width: 350, height: 50)
        }.padding(.top, 15)
        .foregroundStyle(.white)
        
        /*
            Password field.
         */
        
        TextField(text: self.$password) {
            Text("Password")
                .foregroundStyle(
                    Color(uiColor: UIColor(hex: "939393", alpha: 1.0)!)
                ).bold()
        }.frame(width: 350, height: 50)
        .padding(.leading, 21)
        .background {
            RoundedRectangle(cornerRadius: 40)
                .fill(
                    Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                ).frame(width: 350, height: 50)
        }.padding(.top, 15)
        .foregroundStyle(.white)
    }
}

struct SignInForgotPasswordButton : View {
    var body: some View {
        HStack {
            Spacer()
            Text("Forgot password")
                .foregroundStyle(Color(uiColor: UIColor(hex: "FFBD82", alpha: 1.0)!))
                .padding(.top, 15)
        }.padding(.trailing)
    }
}

struct SignInButton : View {
    var body: some View {
        Button("Log In") {}
            .bold()
            .font(.system(size: 24))
            .frame(width: 180, height: 60)
            .foregroundStyle(.white)
            .background {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
            }.padding(.top)
    }
}

struct SignInRegisterButton : View {
    var body: some View {
        Text("Dont have an account?")
            .foregroundStyle(Color(uiColor: UIColor(hex: "FFBD82", alpha: 1.0)!))
            .padding(.top, 15)
        
        Text("Register Here")
            .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
            .underline()
            .onTapGesture {
                
            }
    }
}

struct SignInView: View {
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                
                Text("Sign In")
                    .bold()
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .font(.custom("cabin", size: 35))
                    .padding(.top, 220)
                
                SignInFields()
                
                SignInForgotPasswordButton()
                
                SignInButton()
                
                SignInRegisterButton()
                
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
    SignInView()
}
