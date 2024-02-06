import SwiftUI

struct WorkoutLiveView: View {
    @State var username: String = "Swayam"
    
    var body: some View {
        GeometryReader { geo in
            VStack {

                Spacer()
                
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 390, height: 630)
                    .overlay {
                        // Section for video integration
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
    WorkoutLiveView()
}
