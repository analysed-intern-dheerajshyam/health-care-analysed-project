import SwiftUI

struct MeasuringLine : View {
    var body: some View {
        Rectangle()
            .frame(width: 1, height: 250)
            .foregroundStyle(LinearGradient(
             gradient: Gradient(
                 colors: [
                     Color(uiColor: UIColor(hex: "614D8F")!),
                     Color(uiColor: UIColor(hex: "9E86FF")!),
                     Color(uiColor: UIColor(hex: "FFFFFF")!)
                 ]
             ), startPoint: .bottom, endPoint: .top
         ))
    }
}

struct MeasuringToogle : View {
    var body: some View {
        Group {
            Circle()
                .stroke(lineWidth: 4)
                .frame(width: 15, height: 15)
                .opacity(0.20)
                .foregroundColor(.gray)
            
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round))
                .frame(width: 15, height: 15)
                .rotationEffect(Angle(degrees: 90))
            
        }.background(.white)
    }
}

struct Readings : View {
    @State var readings:[Int] = []
    
    var body: some View {
        VStack(spacing: 45) {
            ForEach(self.readings.indices, id:\.self) { index in
                Text("\(self.readings[index])").font(.system(size: 15))
                    .foregroundStyle(Color(uiColor: UIColor(hex: "A5A5A5")!))
            }
        }.padding(.trailing)
        .onAppear {
            var reading:Int = 40
            while reading <= 220 {
                self.readings.append(reading)
                reading += 45
            }
            self.readings = self.readings.reversed()
        }
    }
}

struct ReadingsSection : View {
    
    var body: some View {
        HStack(spacing: 0) {
            Spacer()
            
            ZStack {
                MeasuringLine()
                MeasuringToogle()
                
            }.padding(.trailing)
            .padding(.top, 60)
            .foregroundStyle(Color(uiColor: UIColor(hex: "614D8F")!))
            
            Readings()
        }
    }
}

struct Group_1410112684: View {
    var body: some View {
        ZStack(alignment: .leading) {
            ReadingsSection()
            
            Image(.heartGraph)
                .resizable()
                .frame(width: 350)
                .padding(.top, 30)
            
        }.frame(height: 260)
    }
}

struct Frame_480955285 : View {
    var body: some View {
        HStack(spacing: 40) {
            Text("00:00").font(.system(size: 15))
                .foregroundStyle(Color(uiColor: UIColor(hex: "A5A5A5")!))
            Text("06:00").font(.system(size: 15))
                .foregroundStyle(Color(uiColor: UIColor(hex: "A5A5A5")!))
            Text("12:00").font(.system(size: 15))
                .foregroundStyle(Color(uiColor: UIColor(hex: "A5A5A5")!))
            Text("18:00").font(.system(size: 15))
                .foregroundStyle(Color(uiColor: UIColor(hex: "A5A5A5")!))
            Spacer()
        }.padding(.leading)
    }
}

struct HeartRatePage: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                
                Button("START") {}
                    .frame(width: 150, height: 50)
                    .foregroundStyle(.white)
                    .background {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundStyle(Color(uiColor: UIColor(hex: "614D8F")!))
                    }.padding(.top, 21)
                
                Group_1410112684()
                
                Frame_480955285()
                
                Spacer()
            }.toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Measuring heart rate")
                        .font(.system(size: 18))
                        .foregroundStyle(Color(uiColor: UIColor(hex: "2B1857")!))
                        .bold()
                }
            }
        }

    }
}

#Preview {
    HeartRatePage()
}
