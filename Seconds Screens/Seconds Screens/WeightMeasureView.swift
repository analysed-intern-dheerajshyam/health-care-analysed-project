import SwiftUI

struct WeightSubmission : View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color(uiColor: UIColor(hex: "D9D9D9", alpha: 1.0)!))
            .frame(width: 350, height: 48)
            .overlay {
                HStack {
                    Image(.kgStone)
                        .resizable()
                        .frame(width: 24, height: 28)
                    Text("Submit Weight (Kg/lbs)")
                        .font(.custom("cabin", size: 21))
                }
            }
    }
}

struct WeightMeasureView: View {
    @State var sliderValue: CGFloat = 45.0
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("Weight")
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .font(.custom("cabin", size: 36))
                    .padding(.top, 15)
                
                Text("\(self.sliderValue.formatted()) Kg")
                    .foregroundStyle(.white)
                    .font(.custom("cabin", size: 26))
                    .padding(.top, 3)
                    .onAppear {
                    }
                
                HStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(uiColor: UIColor(hex: "D9D9D9", alpha: 1.0)!))
                        .frame(width: 80, height: 36)
                        .overlay {
                            Text("Kg")
                                .font(.custom("cabin", size: 21))
                        }
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(uiColor: UIColor(hex: "D9D9D9", alpha: 1.0)!))
                        .frame(width: 80, height: 36)
                        .overlay {
                            Text("Lb")
                                .font(.custom("cabin", size: 21))
                        }
                }
                
                Slider(value: self.$sliderValue, in: 0...100)
                    .tint(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .padding()
                
//                arrow.down.circle
                
                HStack(spacing: 80) {
                    VStack {
                        Image(systemName: "arrow.down.circle")
                            .resizable()
                            .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                            .frame(width: 33, height: 33)
                        
                        Text("0.0 Kg\nLowest")
                            .foregroundStyle(.white)
                            .font(.custom("cabin", size: 18))
                    }
                    
                    VStack {
                        Image(systemName: "arrow.up.circle")
                            .resizable()
                            .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                            .frame(width: 33, height: 33)
                        
                        Text("0.0 Kg\nHighest")
                            .foregroundStyle(.white)
                            .font(.custom("cabin", size: 18))
                    }
                }
                
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .frame(width: 150, height: 50)
                    .shadow(radius: 6)
                    .padding(.top, 15)
                
                    .overlay {
                        Text("Submit")
                            .font(.system(size: 24))
                            .padding(.top)
                            .foregroundStyle(.white)
                    }
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                    .padding(.top, 40)
                    .ignoresSafeArea(edges: .bottom)
                    .overlay {
                        VStack {
                            Text("Activity Reports")
                                .font(.custom("cabin", size: 21))
                            
                            WeightSubmission()
                            WeightSubmission()
                            WeightSubmission()
                            WeightSubmission()
                            
                            Spacer()
                        }.padding(.top, 60)
                    }
                
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
    WeightMeasureView()
}
