import SwiftUI

struct PickWorkoutWelcomeMessage : View {
    @State var username:String = "Swayam"
    
    var body: some View {
        HStack {
            Text("Hey \(self.username)!")
                .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                .font(.custom("cabin", size: 20))
            
            Spacer()
        }.padding(.leading)
        
        HStack {
            
            Text("Pick a Workout Today")
                .foregroundStyle(Color(uiColor: UIColor(hex: "FFBD82", alpha: 1.0)!))
                .font(.custom("cabin", size: 26))
            
            Spacer()
                
        }.padding(.leading)
    }
}

struct PickWorkoutCardContent : View {
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(
                        Color(uiColor: UIColor(red: 1, green: 0.742, blue: 0.508, alpha: 0.39))
                    ).frame(width: 50, height: 21)
                Spacer()
                
            }.padding(.top)
            .padding(.leading, 9)
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    Color(uiColor: UIColor(red: 1, green: 0.742, blue: 0.508, alpha: 0.39))
                ).frame(width: 150, height: 30)
                .padding(.bottom)
        }
    }
}

struct PickWorkoutCard : View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 15)
            .fill(
                Color(uiColor: UIColor(red: 0.629, green: 0.629, blue: 0.629, alpha: 0.29))
            ).frame(width: 170, height: 190)
            .overlay {
                PickWorkoutCardContent()
            }
    }
}

struct PickWorkoutCards : View {
    @State private var adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    @State var workoutCards = [
        PickWorkoutCard(),
        PickWorkoutCard(),
        PickWorkoutCard(),
        PickWorkoutCard(),
        PickWorkoutCard(),
        PickWorkoutCard()
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: self.adaptiveColumns, spacing: 12) {
                ForEach(0..<self.workoutCards.count, id: \.self) { index in
                    self.workoutCards[index]
                }
            }
        }
    }
}

struct PickWorkoutView: View {
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                PickWorkoutWelcomeMessage()
                PickWorkoutCards()
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
    PickWorkoutView()
}
