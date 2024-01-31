import SwiftUI

struct EnterCodeFields : View {
    
    @State var otp1:String = ""
    @State var otp2:String = ""
    @State var otp3:String = ""
    @State var otp4:String = ""
    @State var otp5:String = ""
    @State var otp6:String = ""
    
    enum Field: Hashable {
        case otp1
        case otp2
        case otp3
        case otp4
        case otp5
        case otp6
    }
    
    @FocusState private var focusedField:Field?

    var body : some View {
        
        /*
            Email field.
         */
        
        HStack {
            TextField("", text: self.$otp1)
                .frame(width: 50, height: 50)
                .foregroundStyle(.white)
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(
                            Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                        ).frame(width: 50, height: 50)
                        
                }.focused($focusedField, equals: .otp1)
                .submitLabel(.next)
                .onSubmit {
                    focusedField = .otp2
                }
            
            TextField("", text: self.$otp2)
                .frame(width: 50, height: 50)
                .foregroundStyle(.white)
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(
                            Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                        ).frame(width: 50, height: 50)
                        
                }.focused($focusedField, equals: .otp2)
                .submitLabel(.next)
                .onSubmit {
                    focusedField = .otp3
                }
            
            TextField("", text: self.$otp3)
                .frame(width: 50, height: 50)
                
                .foregroundStyle(.white)
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(
                            Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                        ).frame(width: 50, height: 50)
                        
                }.focused($focusedField, equals: .otp3)
                .submitLabel(.next)
                .onSubmit {
                    focusedField = .otp4
                }
            
            TextField("", text: self.$otp4)
                .frame(width: 50, height: 50)
                .foregroundStyle(.white)
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(
                            Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                        ).frame(width: 50, height: 50)
                        
                }.focused($focusedField, equals: .otp4)
                .submitLabel(.next)
                .onSubmit {
                    focusedField = .otp5
                }
            
            TextField("", text: self.$otp5)
                .frame(width: 50, height: 50)
                .foregroundStyle(.white)
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(
                            Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                        ).frame(width: 50, height: 50)
                        
                }.focused($focusedField, equals: .otp5)
                .submitLabel(.next)
                .onSubmit {
                    focusedField = .otp6
                }
            
            TextField("", text: self.$otp6)
                .frame(width: 50, height: 50)
                .foregroundStyle(.white)
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(
                            Color(red: 0.63, green: 0.63, blue: 0.63).opacity(0.29)
                        ).frame(width: 50, height: 50)
                        
                }.focused($focusedField, equals: .otp6)
            
        }.padding(.top, 8)
    }
}

struct EnterCodeSubmitButton : View {
    var body: some View {
        Button("Submit") {}
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

struct EnterCodeView: View {
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                
                Text("Enter code")
                    .bold()
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .font(.system(size: 35))
                    .padding(.top, 80)
                
                EnterCodeFields()
                
                EnterCodeSubmitButton()
                
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
    EnterCodeView()
}
