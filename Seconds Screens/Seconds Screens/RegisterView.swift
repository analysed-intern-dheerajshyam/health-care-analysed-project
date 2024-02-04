import SwiftUI

struct SignUpFields : View {
    
    @State var name:String = ""
    @State var email:String = ""
    @State var contact_number:String = ""
    
    @State var showDOB:Bool = false
    @State var calendarID: Int = 0
    @State var dob:Date = Date()
    @State var dobStr:String = ""
    
    @State var referral_code:String = ""
    @State var password:String = ""
    @State var re_password:String = ""
    
    
    var body : some View {
        
        /*
            Name field.
         */
        

        TextField(text: self.$name) {
            Text("Name")
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
            Contact number field
         */
        
        TextField(text: self.$contact_number) {
            Text("Contact Number")
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
            DOB field
         */

        
        TextField("", text: self.$dobStr)
            .frame(width: 350, height: 50)
            .disabled(true)
            .padding(.leading)
            .foregroundStyle(.white)
            .background {
                RoundedRectangle(cornerRadius: 40)
                    .fill(
                        Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                    ).frame(width: 350, height: 50)
                    .overlay {
                        if(self.dobStr.isEmpty) {
                            HStack {
                                Text("Date of birth")
                                    .foregroundStyle(
                                        Color(uiColor: UIColor(hex: "939393", alpha: 1.0)!)
                                    ).bold()
                                Spacer()
                                
                                Image(.DOB)
                                    .padding(.trailing, 24)
                                    .id(self.calendarID)
                                    .overlay {
                                        DatePicker("", selection: self.$dob)
                                            .blendMode(.destinationOver)
                                            .onChange(of: self.dob) { () in
                                                let dateFormatter = DateFormatter()
                                                dateFormatter.dateFormat = "dd/MM/YYYY"
                                                self.calendarID += 1
                                                self.dobStr = dateFormatter.string(from: self.dob)
                                            }
                                    }

                                
                            }.padding(.leading)
                        }
                    }
            }.padding(.top, 15)
        
        /*
            Referral code field
         */
        
        TextField(text: self.$referral_code) {
            Text("Referral code")
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
            Password field
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
        
        /*
            Re-Enter Password field
         */
        
        TextField(text: self.$re_password) {
            Text("Confirm Password")
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


struct SignUpAcceptTermsAndConditions : View {
    @State var selected: Bool = false
    
    var body: some View {
        HStack {
            Spacer()
            Circle()
                .fill(Color(uiColor: UIColor(hex: self.selected ? "FF7D05" : "A0A0A0",
                     alpha: self.selected ? 1.0 : 0.30)!))
                .frame(width: 30, height: 30)
                .onTapGesture {
                    self.selected.toggle()
                }
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
                    .font(.custom("cabin", size: 35))
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
