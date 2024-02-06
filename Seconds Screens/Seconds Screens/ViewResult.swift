//
//  ViewResult.swift
//  Seconds Screens
//
//  Created by Harapriya on 05/02/24.
//

import SwiftUI

struct ViewResult: View {
    var body: some View {
        ZStack (alignment: .top){
            
            Color.black
                .opacity(0.9)
            
            VStack {
                HStack {
                    Image(systemName: "chevron.left")
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .foregroundColor(.orange)
                        .font(.system(size: 20))
                        
                    
                    Image("camera")
                        
                }
                .padding()
                .padding(.top, 50)
                
                RoundedRectangle(cornerRadius: 40)
                    .frame(maxWidth: .infinity,maxHeight: 540)
                    .foregroundColor(.gray)
                    
                Button(action: {
                    
                    
                }) {
                        Text("View Result")
                            .font(.system(size: 20))
                            .bold()
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .padding()
                    }
                
                .frame(width: 146, height: 40)
                .background(Color.orange.cornerRadius(24))
                .padding(.top, 40)
            }
            
            
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ViewResult()
}
