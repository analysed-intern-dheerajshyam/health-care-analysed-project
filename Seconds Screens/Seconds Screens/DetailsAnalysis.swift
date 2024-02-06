//
//  DetailsAnalysis.swift
//  Seconds Screens
//
//  Created by Harapriya on 06/02/24.
//

import SwiftUI

struct DetailsAnalysis: View {
    var body: some View {
        ZStack {
            
            Color.black
                .opacity(0.9)
            
            VStack {
                
                HStack{
                    Image(systemName: "chevron.left")
                        .foregroundColor(.orange)
                        .imageScale(.small)
                    VStack {
                        Text("Camera is ON")
                            .foregroundColor(.orange)
                        Text("Your being recorded!")
                            .foregroundColor(.white)
                    }
                    .font(.system(size: 14))
                    .frame(width:220,height: 40)
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(10)
                    .padding()
                    Image(.videoOff)
                        .background(.black)
                }
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.top, 50)
                Spacer()
            }
            ZStack(alignment: .bottom) {
                Color.gray
                    .opacity(0.5)
                    .frame(height: 400)
                    .cornerRadius(40)
                VStack {
                    Spacer()
                    HStack {
                        Image(systemName: "chevron.left")
                        Text("Detail Analysis")
                            .font(.system(size: 32))
                        
                            .padding()
                    }
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Daily Goal:")
                                .padding(.bottom, 10)
                            Text("Total Time:")
                                .padding(.bottom, 10)
                            Text("Workout Time:")
                                .padding(.bottom, 10)
                            Text("Paused Time:")
                            
                        }
                        .padding()
                        
                        VStack(alignment: .leading) {
                            Text("00:10:59 Reps")
                                .padding(.bottom, 10)
                            Text("5 Reps")
                                .padding(.bottom, 10)
                            Text("00:09:28 Reps")
                                .padding(.bottom, 10)
                            Text("00:01:31 Reps")
                        }
                    }
                }
                
                .foregroundColor(.orange)
                .padding(.bottom, 140)
            }
           
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    DetailsAnalysis()
}
