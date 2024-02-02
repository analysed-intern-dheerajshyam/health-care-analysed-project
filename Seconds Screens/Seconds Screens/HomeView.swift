import SwiftUI

struct HomeMessageCard : View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color(uiColor: UIColor(hex: "A0A0A0", alpha: 0.5)!))
            .frame(width: 350, height: 120)
            .overlay {
                VStack {
                    HStack {
                        Text("Great!")
                            .font(.system(size: 25))
                        Spacer()
                    }.padding(.leading)
                    .bold()
                    .foregroundStyle(.white)
                    
                    HStack {
                        Text("Today's plan is more than half done\nKeep it up")
                        Spacer()
                    }.padding(.leading)
                    .padding(.top, 4)
                    .foregroundStyle(.white)
                }
            }.shadow(radius: 3)
    }
}

struct HomeProgressCircle : View {
    let color:Color
    
    init(color: Color) {
        self.color = color
    }
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke(lineWidth: 9)
                    .frame(width: 80, height: 80)
                    .opacity(0.20)
                    .foregroundColor(.gray)
                
                Circle()
                .stroke(style: StrokeStyle(lineWidth: 9, lineCap: .round, lineJoin: .round))
                .frame(width: 80, height: 80)
                .foregroundColor(self.color)
            }
            Spacer()
        }.padding(.top, 30)
    }
}


struct HomeReportCard : View {
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(uiColor: UIColor(hex: "A0A0A0", alpha: 0.5)!))
                .frame(width: 120, height: 200)
                .overlay {
                    HStack {
                        HomeProgressCircle(color: Color(
                            uiColor: UIColor(
                                hex: "FF7D05", alpha: 1.0)!)
                        )
                    }
                }
        }
    }
}

struct HomeReports : View {
    var body: some View {
        HStack {
            Text("Activity Reports")
                .bold()
                .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                .font(.system(size: 25))
                .padding(.top, 15)
                .padding(.leading)
            
            Spacer()
        }
        
        HStack {
            HomeReportCard()
            HomeReportCard()
            HomeReportCard()
        }
    }
}

struct HomeExercise : View {
    
    @State private var selection = "Weekly"
    let names = [
        "Daily",
        "Weekly",
        "Monthly",
        "Yearly"
    ]
    
    var body: some View {
        HStack {
            Text("Exercise")
                .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                .font(.system(size: 25))
                .padding(.top, 15)
                .padding(.leading)
            
            Spacer()
            
            Picker(self.selection, selection: self.$selection) {
                ForEach(self.names, id: \.self) { name in
                    Text(name)
                }
            }.tint(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
            .bold()
            .font(.system(size: 18))
            .padding(.top, 15)
            .padding(.trailing, 4)
        }
        
        RoundedRectangle(cornerRadius: 15)
            .fill(Color(uiColor: UIColor(hex: "A0A0A0", alpha: 0.5)!))
            .frame(width: 350, height: 210)
    }
}

struct HomeView: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                HStack {
                    Text("Hey User!")
                        .bold()
                        .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                        .font(.system(size: 35))
                        .padding(.top, 15)
                        .padding(.leading)
                    
                    Spacer()
                }
                
                HomeMessageCard()
                
                HomeReports()
                
                HomeExercise()
                
                Spacer()
                
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
    HomeView()
}
