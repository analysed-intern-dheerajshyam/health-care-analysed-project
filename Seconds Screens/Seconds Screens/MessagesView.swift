import SwiftUI

struct MessagesView: View {
    
    @State var message:String = ""
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("Messages")
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .font(.custom("cabin", size: 40))
                    .padding(.top, 15)
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(uiColor: UIColor(hex: "A0A0A0", alpha: 0.4)!))
                    .frame(width: 350, height: 60)
                    .padding(.bottom)
                    .overlay {
                        HStack {
                            TextField(text: self.$message) {
                                Text("Type In")
                                    .foregroundStyle(Color(uiColor: UIColor(hex: "F5F5F5B5", alpha: 0.4)!))
                                    .font(.custom("cabin", size: 18))
                            }.padding(.bottom)
                            .padding(.leading)
                            .foregroundStyle(.white)
                            
                            Spacer()
                            
                            Image(systemName: "paperplane")
                                .resizable()
                                .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                                .frame(width: 24, height: 24)
                                .padding(.bottom)
                                .padding(.trailing)
                            
                        }
                    }
            }
            .frame(width: geo.size.width, height: geo.size.height)
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
    MessagesView()
}
