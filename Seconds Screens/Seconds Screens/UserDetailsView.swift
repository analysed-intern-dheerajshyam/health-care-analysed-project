import SwiftUI

struct UserInput : View {
    @State var input:String = ""
    let label:String
    
    var body: some View {
        TextField(text: self.$input) {
            Text(self.label)
                .foregroundStyle(
                    Color(uiColor: UIColor(hex: "D9D9D9", alpha: 0.5)!)
                )
        }.padding(.leading)
        .foregroundStyle(.white)
    }
}

struct UserDetailsForm : View {
    @State var inputBoxes:[UserInput] = [
        UserInput(label: "User Name"),
        UserInput(label: "Email"),
        UserInput(label: "Phone Number"),
        UserInput(label: "Password")
    ]
    
    var body: some View {
        Text("User Information")
            .foregroundStyle(Color(uiColor: UIColor(hex: "FFFFFF", alpha: 1.0)!))
            .font(.custom("cabin", size: 21))
            .padding(.top, 60)
        
        RoundedRectangle(cornerRadius: 15)
            .fill(Color(uiColor: UIColor(hex: "A0A0A0", alpha: 0.3)!))
            .frame(width: 350, height: 201)
            .overlay {
                VStack(spacing: 12) {
                    Spacer()
                    ForEach(0..<self.inputBoxes.count, id: \.self) { index in
                        self.inputBoxes[index]
                        
                        if(index != (self.inputBoxes.count - 1)) {
                            Rectangle()
                                .fill(Color(uiColor: UIColor(hex: "D9D9D9", alpha: 0.5)!))
                                .frame(height: 1)
                        }
                    }
                    Spacer()
                }
            }
    }
}

struct UserDetailsView: View {
    @State var details:[String: String] = [:] // Pass this to child view user details to map values during onChange.
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("User Details")
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .font(.custom("cabin", size: 26))
                    .padding(.top, 15)
                
                Text("Profile")
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FFFFFF", alpha: 1.0)!))
                    .font(.custom("cabin", size: 26))
                    .padding(.top, 15)
                
                Circle()
                    .fill(Color(uiColor: UIColor(hex: "D9D9D9", alpha: 1.0)!))
                    .frame(width: 125, height: 121)
                
                UserDetailsForm()
                
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .frame(width: 350, height: 50)
                    .shadow(radius: 6)
                    .padding(.top, 15)
                
                    .overlay {
                        Text("Update Details")
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

#Preview {
    UserDetailsView()
}
