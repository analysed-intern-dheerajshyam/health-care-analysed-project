//
//  CustomizedExperience.swift
//  Seconds Screens
//
//  Created by Harapriya on 06/02/24.
//

import SwiftUI

struct CustomizedExperience: View {
    @State var sliderValueHeight: Double = 0.5
    @State var sliderValueWeight: Double = 0.5
    var body: some View {
        ZStack{
            Color.black
                .opacity(0.9)
            VStack{
                HStack{
                    Image(systemName: "chevron.left")
                        .foregroundColor(.orange)
                        .imageScale(.medium)
                        .padding()
                    Text("Back")
                        .foregroundColor(Color.white)
                        .font(.system(size: 20))
                    Spacer()
                }
                .padding(.top,48)
                
                Text("Let us Know")
                    .foregroundColor(.orange)
                    .font(.title)
                    .padding()
                Text("To give you a customized experience we need to know  your details!")
                    .foregroundColor(.white)
                    .font(.title2)
                    .padding(.horizontal)
                Text("Choose one:")
                    .frame(maxWidth: .infinity,alignment:
                            .leading)
                    .foregroundColor(.white)
                    .font(.title2)
                    .padding()
                HStack(spacing: 20){
                    Image("ImageMen")
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: 150 )
                    Image("ImageWomen")
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: 150 )
                    
                }
                .padding(.horizontal,20)
                HStack{
                    Text("What is Your \n Height ?")
                        .foregroundColor(.white)
                        .font(.title2)
                        Spacer()
                    Text("\(sliderValueHeight)")
                        .foregroundColor(.white)
                        .font(.title2)
                }
                .padding(.top,20)
                .padding(.horizontal,20)
                
                Slider(value: $sliderValueHeight)
                    .accentColor(.orange)
                    HStack(alignment: .center){
                        Text("What is Your \n Wright ?")
                            .foregroundColor(.white)
                            .font(.title2)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text("\(sliderValueWeight)")
                            .frame(alignment: .trailing)
                            .foregroundColor(.white)
                            .font(.title2)
                    }
                    .padding(.horizontal)
                    Slider(value: $sliderValueWeight)
                        .accentColor(.orange)
                
                    Text("Continue")
                        .frame(width: 180,height: 50)
                        .background(.orange)
                        .cornerRadius(26)
                        .foregroundColor(.white)
                        .font(.title2)
                        .padding()
                    Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    CustomizedExperience()
}
