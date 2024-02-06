//
//  DetailsAnalysis2.swift
//  Seconds Screens
//
//  Created by Harapriya on 06/02/24.
//

import SwiftUI

struct DetailsAnalysis2: View {
    var body: some View {
        ZStack {
            Color.black
                .opacity(0.9)
            ZStack(alignment: .bottom) {
                Color.gray
                    .opacity(0.5)
                    .cornerRadius(40)
                    .padding(.top, 140)
                
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
                                .padding(.bottom, 10)
                            Text("Total Reps:")
                                .padding(.bottom, 10)
                            Text("Total calories:")
                                .padding(.bottom, 10)
                            Text("Avg Heart Rate:")
                                .padding(.bottom, 10)
                            Text("Max Heart Rate:")
                                .padding(.bottom, 10)
                            Text("Accuracy")
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
                                .padding(.bottom, 10)
                            Text("5")
                                .padding(.bottom, 10)
                            Text("101kcal")
                                .padding(.bottom, 10)
                            Text("105 BPM")
                                .padding(.bottom, 10)
                            Text("125 BPM")
                                .padding(.bottom, 10)
                            Text("  ")
                        
                        }
                        
                    }
                    Image("graphImage")
                        .padding(.bottom,60)
                }
                .foregroundColor(.orange)
                
                //MARK: Graph add here
                
                    
                
                
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    DetailsAnalysis2()
}
