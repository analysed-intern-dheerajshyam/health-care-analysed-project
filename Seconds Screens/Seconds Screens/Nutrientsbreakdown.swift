//
//  Nutrientsbreakdown.swift
//  Seconds Screens
//
//  Created by Harapriya on 06/02/24.
//

import SwiftUI

struct Nutrientsbreakdown: View {
    @State private var selectedQuantity = 1
    var body: some View {
        ZStack (alignment: .top){
            
            Color.black
                .opacity(0.9)
            
            VStack {
                Image(systemName: "chevron.left")
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .foregroundColor(.orange)
                    .font(.system(size: 20))
                    .padding(.top, 60)
                    .padding(.leading, 20)
                Spacer()
                RoundedRectangle(cornerRadius: 40)
                    .frame(maxWidth: .infinity,maxHeight: 700)
                    .foregroundColor(.gray)
                    .opacity(0.5)
                    .overlay {
                        VStack {
                            VStack(alignment: .leading) {
                                Text("Pizza")
                                    .foregroundColor(.orange)
                                    .font(.custom("Cabin", size: 32))                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .padding()
                                Text("Nutrients  breakdown")
                                    .foregroundColor(.orange)
                                    .font(.system(size: 18))
                                    .padding()
                            }
                            .padding(.trailing, 180)
                            .padding(.top, 60)
                            Spacer()
                            
                            HStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(maxWidth: 80,maxHeight: 92)
                                    .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96))
                                    .opacity(0.6)
                                    .overlay{
                                        VStack {
                                            Image(systemName: "flame")
                                                       .resizable()
                                                       .aspectRatio(contentMode: .fit)
                                                       .frame(width: 16, height: 22)
                                                       .foregroundColor(.orange)
                                            Text("Energy")
                                                .foregroundColor(.black)
                                                .font(.custom("Cabin", size: 13))
                                            Text("205.00kcal")
                                                .foregroundColor(.black)
                                                .font(.custom("Cabin", size: 13))
                                        }
                                        }
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(maxWidth: 80,maxHeight: 92)
                                    .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96))
                                    .opacity(0.6)
                                    .overlay{
                                        VStack {
                                            Image(systemName: "flame")
                                                       .resizable()
                                                       .aspectRatio(contentMode: .fit)
                                                       .frame(width: 16, height: 22)
                                                       .foregroundColor(.orange)
                                            Text("Energy")
                                                .foregroundColor(.black)
                                                .font(.custom("Cabin", size: 13))
                                            Text("205.00kcal")
                                                .foregroundColor(.black)
                                                .font(.custom("Cabin", size: 13))
                                        }
                                        }
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(maxWidth: 80,maxHeight: 92)
                                    .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96))
                                    .opacity(0.6)
                                    .overlay{
                                        VStack {
                                            Image(systemName: "flame")
                                                       .resizable()
                                                       .aspectRatio(contentMode: .fit)
                                                       .frame(width: 16, height: 22)
                                                       .foregroundColor(.orange)
                                            Text("Energy")
                                                .foregroundColor(.black)
                                                .font(.custom("Cabin", size: 13))
                                            Text("205.00kcal")
                                                .foregroundColor(.black)
                                                .font(.custom("Cabin", size: 13))
                                        }
                                        }
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(maxWidth: 80,maxHeight: 92)
                                    .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96))
                                    .opacity(0.6)
                                    .overlay{
                                        VStack {
                                            Image(systemName: "flame")
                                                       .resizable()
                                                       .aspectRatio(contentMode: .fit)
                                                       .frame(width: 16, height: 22)
                                                       .foregroundColor(.orange)
                                            Text("Energy")
                                                .foregroundColor(.black)
                                                .font(.custom("Cabin", size: 13))
                                            Text("205.00kcal")
                                                .foregroundColor(.black)
                                                .font(.custom("Cabin", size: 13))
                                        }
                                        }
                            }
                            Spacer()
                                .padding()
                            
                            Text("Pick the quantity")
                                .foregroundColor(.orange)
                           
                                .padding()
                            Picker(
                                selection: $selectedQuantity,
                                label: Text("Picker"),
                                content: {
                                    Text("1").tag(1)
                                    Text("2").tag(2)
                                    Text("3").tag(3)
                                    Text("4").tag(4)
                                    Text("5").tag(5)
                                        
                                })
                            .pickerStyle(WheelPickerStyle())
                            
                            .padding()
                                
                            Text("Add")
                                .frame(width: 140, height: 42)
                                .background(Rectangle().fill(Color.orange)) // Use Rectangle to apply background
                                .cornerRadius(26)
                                .foregroundColor(.white)
                                .font(.title2)
                                .padding(.bottom, 80)
                            
                            
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                    }
                    .padding(.top, 48)
                
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Nutrientsbreakdown()
}
