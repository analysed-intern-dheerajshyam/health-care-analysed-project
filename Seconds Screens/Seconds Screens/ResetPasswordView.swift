import SwiftUI

struct ResetPasswordFields : View {
    
    @State var password:String = ""
    @State var re_password:String = ""
    
    
    
    var body : some View {
        
        /*
            New Password field.
         */
        
        TextField("", text: self.$password)
            .frame(width: 350, height: 50)
            .background {
                RoundedRectangle(cornerRadius: 40)
                    .fill(
                        Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                    ).frame(width: 350, height: 50)
                    .overlay {
                        if(self.password.isEmpty) {
                            HStack {
                                Text("Enter new password")
                                    .foregroundStyle(
                                        Color(uiColor: UIColor(hex: "939393", alpha: 1.0)!)
                                    ).bold()
                                Spacer()
                            }.padding(.leading)
                        }
                    }
            }.padding(.top, 15)
        
        /*
            Re-enter Password field.
         */
        
        TextField("", text: self.$re_password)
            .frame(width: 350, height: 50)
            .background {
                RoundedRectangle(cornerRadius: 40)
                    .fill(
                        Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                    ).frame(width: 350, height: 50)
                    .overlay {
                        if(self.re_password.isEmpty) {
                            HStack {
                                Text("Re-enter New Password")
                                    .foregroundStyle(
                                        Color(uiColor: UIColor(hex: "939393", alpha: 1.0)!)
                                    ).bold()
                                Spacer()
                            }.padding(.leading)
                        }
                    }
            }.padding(.top, 15)
    }
}

struct ResetButton : View {
    var body: some View {
        Button("Reset") {}
            .frame(width: 180, height: 60)
            .bold()
            .font(.system(size: 24))
            .foregroundStyle(.white)
            .background {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
            }.padding(.top)
    }
}

struct ResetPasswordView: View {
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                
                Text("Reset Password")
                    .bold()
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .font(.system(size: 35))
                    .padding(.top, 80)
                
                Text("Create a new password and type\nthe new password twice")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FFBD82", alpha: 1.0)!))
                    .font(.system(size: 20))
                    .padding(.top, 3)
                
                ResetPasswordFields()
                
                ResetButton()
                
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
    ResetPasswordView()
}
