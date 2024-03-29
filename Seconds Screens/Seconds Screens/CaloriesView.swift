import SwiftUI


struct CaloriesProgressCircle : View {
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
            .stroke(lineWidth: 12)
            .frame(width: 150, height: 150)
            .opacity(0.20)
            .foregroundColor(.gray)
            
            Circle()
                .trim(from: 0.0, to: 1.0) // Can be used to show progress. Keep changing (to: Double) parameter for progress.
            .rotation(.degrees(180))
            .stroke(style: StrokeStyle(lineWidth: 12, lineCap: .round, lineJoin: .round))
            .frame(width: 150, height: 150)
            .foregroundColor(self.color)
            
            VStack {
                Text("\(self.count)")
                    .bold()
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FFBD82", alpha: 1.0)!))
                    .font(.system(size: 40))
                
                Text(self.unit)
                    .bold()
                    .padding(.leading)
                    .padding(.trailing)
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FFBD82", alpha: 1.0)!))
                    .font(.system(size: 20))
            }
        }
    }
}

struct CaloriesTotalCount : View {
    let totalCaloriesCount: Int
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color(uiColor: UIColor(hex: "A0A0A0", alpha: 0.3)!))
                .frame(width: 150, height: 60)
                .shadow(radius: 6)
                .padding(.top, 15)
            
            Text("Total: \(self.totalCaloriesCount)")
                .font(.system(size: 21))
                .foregroundStyle(.white)
                .padding(.top)
                .multilineTextAlignment(.center)
        }
    }
}

struct MealNamePad : View {
    let mealName: String
    let isOpened: Bool
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color(uiColor: UIColor(hex: "A0A0A0", alpha: 0.4)!))
            .frame(width: 350, height: 60)
            .shadow(radius: 4)
            .padding(.top, 15)
            .overlay {
                HStack {
                    Text(self.mealName)
                        .font(.system(size: 21))
                        .foregroundStyle(.white)
                        .padding(.top)
                        .padding(.leading, 40)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Circle()
                        .stroke(lineWidth: 4)
                        .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                        .frame(width: 36, height: 36)
                        .padding(.top)
                        .padding(.trailing)
                        .overlay {
                            HStack {
                                Spacer()
                                Image(systemName: !self.isOpened ? "plus" : "minus")
                                    .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                                Spacer()
                            }.padding(.top)
                                .padding(.trailing)
                                .bold()
                        }
                }
            }
    }
}

struct MealDetails : View {
    let details: [String]
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color(uiColor: UIColor(hex: "A0A0A0", alpha: 1.0)!))
            .frame(width: 350, height: 60)
            .shadow(radius: 6)
            .padding(.top, 15)
        
            .overlay {
                HStack {
                    Circle()
                        .fill(Color(uiColor: UIColor(hex: "D9D9D9", alpha: 1.0)!))
                        .frame(width: 15, height: 15)
                        .padding(.leading, 15)
                        .padding(.top)
                    
                    Text(self.details.joined(separator: "\n"))
                        .font(.system(size: 18))
                        .padding(.top)
                        .foregroundStyle(.black)
                    
                    Spacer()
                }
            }
    }
}

struct AddItemsToMealButton : View {
    let mealName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
            .fill(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
            .frame(width: 350, height: 50)
            .shadow(radius: 6)
            .padding(.top, 15)
        
            .overlay {
                Text("Add items for \(self.mealName)")
                    .font(.system(size: 24))
                    .padding(.top)
                    .foregroundStyle(.white)
            }
    }
}

struct MealInfoPad : View {
    let meal: Meal
    
    @State var dropDown: Bool = false
    
    var body: some View {
        VStack {
            MealNamePad(mealName: self.meal.name, isOpened: self.dropDown)
                .onTapGesture {
                    self.dropDown.toggle()
                }
            
            if(self.dropDown) {
                if(!self.meal.details.isEmpty) {
                    MealDetails(details: self.meal.details)
                }
                
                AddItemsToMealButton(mealName: self.meal.name)
            }
            
        }
    }
}

struct CaloriesCategory : View {
    let total: Int
    let unit: String
    
    var body: some View {
        VStack {
            
            Text(self.unit)
                .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                .font(.custom("cabin", size: 40))
                .padding(.top, 15)
            
            CaloriesProgressCircle(
                color: Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!),
                count: self.total, unit: self.unit)
            
            CaloriesTotalCount(totalCaloriesCount: self.total)
        }
    }
}

struct CateogryCarousel : View {
    @State var categories: [AnyView] = [
        AnyView(CaloriesCategory(total: 0, unit: "Calories")),
        AnyView(CaloriesCategory(total: 0, unit: "Protiens")),
        AnyView(CaloriesCategory(total: 0, unit: "Carbohyrates")),
        AnyView(CaloriesCategory(total: 0, unit: "Fats"))
    ]
    
    @State var index: Int = 0
    
    var body: some View {
        HStack {
            Circle()
                .fill(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                .frame(width: 63, height: 33)
                .overlay {
                    HStack {
                        Spacer()
                        Image(systemName: "chevron.left")
                            .resizable()
                            .bold()
                            .foregroundStyle(.white)
                            .frame(width: 12, height: 12)
                            .onTapGesture {
                                let min = (self.index == 0)
                                if(!min) {
                                    self.index = self.index - 1
                                }
                            }
                        Spacer()
                    }
                }.padding(.trailing)
            
            self.categories[self.index]
            
            Circle()
                .fill(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                .frame(width: 63, height: 33)
                .overlay {
                    HStack {
                        Spacer()
                        Image(systemName: "chevron.right")
                            .resizable()
                            .bold()
                            .foregroundStyle(.white)
                            .frame(width: 12, height: 12)
                            .onTapGesture {
                                let max = (self.index == (self.categories.count - 1))
                                if(!max) {
                                    self.index += 1
                                }
                                
                            }
                        Spacer()
                    }
                }.padding(.leading)
        }
    }
}

struct CaloriesView: View {
    
    let totalCaloriesCount: Int
    let meals:[Meal] = [
        Meal(name: "Breakfast", details: ["Topco Associates, Inc.", "Og Okal"]),
        Meal(name: "Lunch", details: [])
    ]
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                CateogryCarousel()
                
                ScrollView {
                    VStack {
                        ForEach(0..<self.meals.count, id: \.self) { index in
                            MealInfoPad(meal: self.meals[index])
                        }
                    }.onAppear {
                        
                    }
                }
                
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
    CaloriesView(totalCaloriesCount: 88)
}
