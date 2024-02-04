import SwiftUI

struct ResultsViewContent: View {
    let workoutResult: WorkoutResult
    
    var body: some View {
        VStack {
            HStack {
                Text(self.workoutResult.title)
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FFFFFF", alpha: 1.0)!))
                    .font(.custom("cabin", size: 18))
                    .padding(.leading)
                
                Spacer()
            }.padding(.leading)
            
            HStack {
                Text("\(self.workoutResult.count) \(self.workoutResult.unit)")
                    .bold()
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FFBD82", alpha: 1.0)!))
                    .font(.custom("cabin", size: 28))
                    .padding(.leading)
                
                Spacer()
            }.padding(.leading)
        }
    }
}

struct ResultsView: View {
    @State var results: [ResultsViewContent] = [
        ResultsViewContent(
            workoutResult: WorkoutResult(
                title: "Average Height", count: "12000.00", unit: "cm"
            )
        ),
        
        ResultsViewContent(
            workoutResult: WorkoutResult(
                title: "Average Waist Length", count: "12000.00", unit: "cm"
            )
        ),
        
        ResultsViewContent(
            workoutResult: WorkoutResult(
                title: "Average Leg Length", count: "12000.00", unit: "cm"
            )
        ),
        
        ResultsViewContent(
            workoutResult: WorkoutResult(
                title: "Average Shoulder Length", count: "12000.00", unit: "cm"
            )
        ),
        
        ResultsViewContent(
            workoutResult: WorkoutResult(
                title: "Average Arm Length", count: "12000.00", unit: "cm"
            )
        )
    ]
    
    var body: some View {
        GeometryReader { geo in
            VStack {

                Text("Results")
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .font(.custom("cabin", size: 40))
                
                ForEach(0..<self.results.count, id: \.self) { index in
                    self.results[index].padding(.top)
                }
                
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .frame(width: 350, height: 50)
                    .shadow(radius: 6)
                    .padding(.top, 15)
                
                    .overlay {
                        Text("Done")
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
    ResultsView()
}
