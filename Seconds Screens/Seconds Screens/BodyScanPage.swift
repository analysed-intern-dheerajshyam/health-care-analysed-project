//
//  BodyScanPage.swift
//  Seconds Screens
//
//  Created by Harapriya on 05/02/24.
//

import SwiftUI

struct BodyScanPage: View {
    var body: some View {
        ZStack{
            Color.black
                .opacity(0.9)
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(maxWidth: .infinity,maxHeight: 280)
                        .foregroundColor(.gray)
                        .opacity(0.5)
                        .padding()
                    Text("Our technology extracts key body landmarks from a customers photos and creates a 3D body model from which we extract 86 measurements. We extract important features of the users body, such as body contour, body shape, and position, detect specific body parts ( head,neck, shoulder, forearms, and ankles) and capture the details of the users appearance, such as haircut and...")
                        .font(.system(size: 18))
                        .padding([.leading, .trailing], 36)
                }
                VStack {
                    Button(action: {
                        
                        
                    }) {
                        VStack {
                            Text("Press to Start")
                                .font(.system(size: 20))
                                .bold()
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .padding(.top, 30)
                            Image("camera")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                                .padding(.bottom, 20)
                        }
                    }
                    .frame(width: 150, height: 110)
                    .background(Color.orange.cornerRadius(24))
                }
                
            }
        }
        .ignoresSafeArea()
        
        
    }
}

#Preview {
    BodyScanPage()
}
