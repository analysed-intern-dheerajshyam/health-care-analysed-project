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
                .stroke(lineWidth: 15)
                .frame(width: 150, height: 150)
                .opacity(0.20)
                .foregroundColor(.gray)
            
            Circle()
            .stroke(style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))
            .frame(width: 150, height: 150)
            .foregroundColor(self.color)
            
            VStack {
                Text("\(self.count)")
                    .bold()
                    .foregroundStyle(Color(uiColor: UIColor(hex: "FFBD82", alpha: 1.0)!))
                    .font(.system(size: 40))
                
                Text(self.unit)
                    .bold()
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
    let isLast: Bool
    
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
                    
                    if(isLast) {
                        Circle()
                            .stroke(lineWidth: 4)
                            .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                            .frame(width: 36, height: 36)
                            .padding(.top)
                            .padding(.trailing)
                            .overlay {
                                HStack {
                                    Spacer()
                                    Image(systemName: "plus")
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
    let isLast: Bool
    
    var body: some View {
        VStack {
            MealNamePad(mealName: self.meal.name, isLast: self.isLast)
            
            if(!self.meal.details.isEmpty) {
                MealDetails(details: self.meal.details)
            } else {
                AddItemsToMealButton(mealName: self.meal.name)
            }
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
                HStack {
                    Text("Calories")
                        .foregroundStyle(Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!))
                        .font(.system(size: 40))
                        .padding(.top, 15)
                }
                
                CaloriesProgressCircle(
                    color: Color(uiColor: UIColor(hex: "FF7D05", alpha: 1.0)!),
                        count: self.totalCaloriesCount, unit: "Calories")
                
                CaloriesTotalCount(totalCaloriesCount: self.totalCaloriesCount)
                
                ScrollView {
                    VStack {
                        ForEach(0..<self.meals.count, id: \.self) { index in
                            MealInfoPad(
                                meal: self.meals[index],
                                isLast: (index == (self.meals.count - 1)
                            ))
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
