import SwiftUI

struct SignUpFields : View {
    
    @State var name:String = ""
    @State var email:String = ""
    @State var contact_number:String = ""
    @State var dob:String = ""
    @State var referral_code:String = ""
    @State var password:String = ""
    @State var re_password:String = ""
    
    
    var body : some View {
        
        /*
            Name field.
         */
        
        TextField("", text: self.$name)
            .frame(width: 350, height: 50)
            .background {
                RoundedRectangle(cornerRadius: 40)
                    .fill(
                        Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                    ).frame(width: 350, height: 50)
                    .overlay {
                        if(self.name.isEmpty) {
                            HStack {
                                Text("Name")
                                    .foregroundStyle(
                                        Color(uiColor: UIColor(hex: "939393", alpha: 1.0)!)
                                    ).bold()
                                Spacer()
                            }.padding(.leading)
                        }
                    }
            }.padding(.top, 15)
        
        /*
           Email field.
         */
        
        TextField("", text: self.$email)
            .frame(width: 350, height: 50)
            .background {
                RoundedRectangle(cornerRadius: 40)
                    .fill(
                        Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                    ).frame(width: 350, height: 50)
                    .overlay {
                        if(self.email.isEmpty) {
                            HStack {
                                Text("Email")
                                    .foregroundStyle(
                                        Color(uiColor: UIColor(hex: "939393", alpha: 1.0)!)
                                    ).bold()
                                Spacer()
                            }.padding(.leading)
                        }
                    }
            }.padding(.top, 15)
        
        /*
            Contact number field
         */
        
        TextField("", text: self.$contact_number)
            .frame(width: 350, height: 50)
            .background {
                RoundedRectangle(cornerRadius: 40)
                    .fill(
                        Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                    ).frame(width: 350, height: 50)
                    .overlay {
                        if(self.contact_number.isEmpty) {
                            HStack {
                                Text("Contact Number")
                                    .foregroundStyle(
                                        Color(uiColor: UIColor(hex: "939393", alpha: 1.0)!)
                                    ).bold()
                                Spacer()
                            }.padding(.leading)
                        }
                    }
            }.padding(.top, 15)
        
        /*
            DOB field
         */
        
        TextField("", text: self.$dob)
            .frame(width: 350, height: 50)
            .background {
                RoundedRectangle(cornerRadius: 40)
                    .fill(
                        Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                    ).frame(width: 350, height: 50)
                    .overlay {
                        if(self.dob.isEmpty) {
                            HStack {
                                Text("Date of birth")
                                    .foregroundStyle(
                                        Color(uiColor: UIColor(hex: "939393", alpha: 1.0)!)
                                    ).bold()
                                Spacer()
                                Image(.DOB)
                                    .padding(.trailing, 24)
                            }.padding(.leading)
                        }
                    }
            }.padding(.top, 15)
        
        /*
            Referral code field
         */
        
        TextField("", text: self.$referral_code)
            .frame(width: 350, height: 50)
            .background {
                RoundedRectangle(cornerRadius: 40)
                    .fill(
                        Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                    ).frame(width: 350, height: 50)
                    .overlay {
                        if(self.referral_code.isEmpty) {
                            HStack {
                                Text("Referral code")
                                    .foregroundStyle(
                                        Color(uiColor: UIColor(hex: "939393", alpha: 1.0)!)
                                    ).bold()
                                Spacer()
                            }.padding(.leading)
                        }
                    }
            }.padding(.top, 15)
        
        /*
            Password field
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
                                Text("Password")
                                    .foregroundStyle(
                                        Color(uiColor: UIColor(hex: "939393", alpha: 1.0)!)
                                    ).bold()
                                Spacer()
                            }.padding(.leading)
                        }
                    }
            }.padding(.top, 15)
        
        /*
            Re-Enter Password field
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
                                Text("Confirm Password")
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


struct SignUpAcceptTermsAndConditions : View {
    var body: some View {
        HStack {
            Spacer()
            Circle()
                .fill(Color(uiColor: UIColor(hex: "A0A0A0", alpha: 0.30)!))
                .frame(width: 30, height: 30)
            HStack(spacing: 0) {
                Text("I accept the ")
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FFBD82", alpha: 1.0)!))
                Text("terms and conditions")
                    .underline()
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
            }
            
            Spacer()
        }
        .padding(.top)
    }
}

struct SignUpButton : View {
    var body: some View {
        Button("Register") {}
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

struct SignUpView: View {
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                
                Text("Register")
                    .bold()
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .font(.system(size: 35))
                    .padding(.top, 40)
                
                SignUpFields()
                
                SignUpAcceptTermsAndConditions()
                
                SignUpButton()
                
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
    SignUpView()
}
