//  HomePage.swift
//  Analysed Project
//  Created by Dheeraj Shyam on 11/01/24.

import SwiftUI


struct Frame_18320 : View {
    var body: some View {
        Circle()
        .fill(Color(uiColor: UIColor(hex: "F4EFFF")!))
        .frame(width: 41, height: 41)
        .overlay {
            Image(.burgerMenu)
                .resizable()
                .frame(width: 21, height: 14)
                
        }
        Spacer()
    }
}

struct Frame_1410112940 : View {
    var body: some View {
        VStack {
            HStack {
                Text("Thursday, 11 Jan")
                    .foregroundStyle(.gray)
                Spacer()
            }
            
            HStack {
                Text("Hello, Jack!")
                    .foregroundStyle(Color(uiColor: UIColor(hex: "2B1857")!))
                    .font(.system(size: 20))
                    .bold()
                Spacer()
            }.padding(.top,1)
            
            
        }.padding(6)
    }
}

struct Ellipse_216 : View {
    var body: some View {
        Circle().frame(width: 50, height: 50)
        .overlay {
            Image(.personSample)
                .resizable()
                .clipShape(Circle())
        }
    }
}



struct TopNavbar : View {
    var body: some View {
        HStack {
            Frame_18320()
            Frame_1410112940()
            Spacer()
            Ellipse_216()
        }.padding()
    }
}

struct Group_1410113001 : View {
    var body: some View {
        VStack {
            
            HStack {
                Text("Great!")
                    .bold()
                    .font(.system(size: 15))
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Text("Today’s plan is more than half done. Keep it up.")
                    .foregroundStyle(Color(uiColor: UIColor(hex: "614D8F")!))
                    .font(.system(size: 15))
                Spacer()
            }
            
            Spacer()
        }
    }
}

struct Group_1410113002 : View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 40)
                .stroke(.clear)
                .overlay {
                    HStack {
                        Group_1410113001()
                            .frame(width: 240)
                        Spacer()
                    }
                }
        }.padding()
    }
}

struct Group_1410113003 : View {
    var body: some View {
        ZStack {
            HStack {
                Group_1410113002()
                    .frame(width: 308, height: 120)
                    .background(
                        Color(
                            uiColor: UIColor(hex: "F4EFFF")!
                        ).opacity(0.5)
                    )
                Spacer()
            }
            
            HStack {
                Spacer()
                Image(.image54)
                    .resizable()
                    .frame(width: 90, height: 89)
            }.padding(.trailing, 6)
        }
    }
}

struct Frame_1410112948 : View {
    var body: some View {
        Group_1410113003()
            .frame(height: 120).padding()
    }
}

struct ProgressCircle : View {
    let color:Color
    let count:Int
    let unit:String
    
    
    init(color: Color, count: Int, unit: String) {
        self.color = color
        self.count = count
        self.unit = unit
    }
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 6)
                .frame(width: 80, height: 80)
                .opacity(0.20)
                .foregroundColor(.gray)
            
            Circle()
            .trim(from: 0.0, to: CGFloat(min(0.7, 0.7)))
            .stroke(style: StrokeStyle(lineWidth: 6, lineCap: .round, lineJoin: .round))
            .frame(width: 80, height: 80)
            .rotationEffect(Angle(degrees: 90))
            .foregroundColor(self.color)
            
            
            VStack {
                Text("\(self.count)")
                    .bold()
                    .font(.system(size: 18))
                
                Text(self.unit)
                    .font(.system(size: 9))
            }
        }
    }
}

struct Card : View {
    let title:String
    let count:Int
    let unit:String
    let progress_color:Color
    
    init(title: String, count: Int, unit: String, progress_color: Color) {
        self.title = title
        self.count = count
        self.unit = unit
        self.progress_color = progress_color
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color(uiColor: UIColor(hex: "CEB8FF")!))
                .background() {
                    LinearGradient(
                        gradient: Gradient(
                            colors: [
                                Color(uiColor: UIColor(hex: "FDFCFF")!)
                            ]
                        ), startPoint: .leading, endPoint: .trailing
                    )
                }
                .frame(width: 103, height: 140)
            
            VStack {
                Text(self.title)
                    .foregroundStyle(Color(uiColor: UIColor(hex: "5B39AA")!))
                    .font(.system(size: 12))
                    .bold()
                Spacer()
                ProgressCircle(color: self.progress_color, count: self.count, unit: self.unit)
            }.padding()
        }
    }
}

struct Frame_14100112944 : View {
    
    let cards:[Card] = [
        Card(title: "Heartbeat", count: 68, unit: "bpm", progress_color: Color(uiColor: UIColor(hex: "5B39AA")!)),
        Card(title: "Weight", count: 58, unit: "kg", progress_color: Color(uiColor: UIColor(hex: "E081BC")!)),
        Card(title: "VO2", count: 53, unit: "kg", progress_color: Color(uiColor: UIColor(hex: "6F4AE4")!)),
        Card(title: "Steps", count: 500, unit: "Steps", progress_color: Color(uiColor: UIColor(hex: "9BCFCE")!)),
        Card(title: "Sleep", count: 7, unit: "Hr", progress_color: Color(uiColor: UIColor(hex: "EA93A4")!)),
        Card(title: "Water", count: 600, unit: "ml", progress_color: Color(uiColor: UIColor(hex: "63AEFF")!))
    ]
    
    let cards_grid:[GridItem] = [
        GridItem(.adaptive(minimum: 120))
    ]
    
    var body: some View {
        HStack {
            Text("Activity Reports")
                .foregroundStyle(Color(uiColor: UIColor(hex: "614D8F")!))
                .bold()
            Spacer()
        }.padding(.leading)
        

        LazyVGrid(columns: self.cards_grid) {
            ForEach(self.cards.indices, id:\.self) { index in
                self.cards[index].padding(.top)
            }
        }.padding(.leading, 6)
        .padding(.trailing, 6)
        
    }
}

struct HomePage: View {
    var body: some View {
        ScrollView {
            VStack {
                
                TopNavbar()
                Frame_1410112948()
                Frame_14100112944()
                
                Spacer()
            }
        }
    }
}

#Preview {
    HomePage()
}
