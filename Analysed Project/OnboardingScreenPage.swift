import SwiftUI


struct Frame_1410112994 : View {
    var body: some View {
        VStack {
            Text("Physiotherapy\nApp")
                .multilineTextAlignment(.center)
                .foregroundColor(Color(uiColor: UIColor(hex: "2B1857")!))
                .bold()
                .font(.system(size: 40))
            
            
            Text("You are ready to go!")
                .multilineTextAlignment(.center)
                .foregroundColor(Color(uiColor: UIColor(hex: "2B1857")!))
                .bold()
                .font(.system(size: 30))
                .padding(.top, 80)
            
            Text("Let's directly move onto the app to explore all the new and unique features!")
                .multilineTextAlignment(.center)
                .padding(.top, 30)
                .frame(width: 300)
            
            Button("Register Now") {}
                .foregroundColor(.white)
                .bold()
                .font(.system(size: 21))
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 300, height: 60)
                        .foregroundStyle(Color(uiColor: UIColor(hex: "614D8F")!))
                }.padding(.top, 60)
            
            HStack {
                Text("Already have any account?")
                    .foregroundStyle(Color(uiColor: UIColor(hex: "614D8F")!))
                    .bold()
                Text("Sign In")
                    .foregroundStyle(Color(uiColor: UIColor(hex: "2B1857")!))
                    .bold()
            }
                .padding(.top, 50)
                
            
            Spacer()
        }
    }
}

struct OnboardingScreenPage: View {
    var body: some View {
        VStack {
            Frame_1410112994()
                .padding()
                .padding(.top, 100)
        }
    }
}

#Preview {
    OnboardingScreenPage()
}
