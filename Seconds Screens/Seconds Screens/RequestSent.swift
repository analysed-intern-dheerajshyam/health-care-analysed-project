//
//  RequestSent.swift
//  Seconds Screens
//
//  Created by Harapriya on 06/02/24.
//

import SwiftUI

struct RequestSent: View {
    var body: some View {
        ZStack (alignment: .top){
            
            Color.black
                .opacity(0.9)
            VStack {
                Image(systemName: "chevron.left")
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .foregroundColor(.orange)
                    .font(.system(size: 26))
                    .padding(.top, 60)
                    .padding(.leading, 20)
                Spacer()
                RoundedRectangle(cornerRadius: 40)
                    .frame(maxWidth: .infinity,maxHeight: 700)
                    .foregroundColor(.gray)
                    .opacity(0.5)
                    .overlay {
                        VStack {
                            HStack(alignment: .bottom) {
                                Image(systemName: "xmark")
                                    .frame(maxWidth: 20,alignment: .leading)
                                    .foregroundColor(.orange)
                                    .font(.system(size: 26))
                                    .padding(.leading)
                                Spacer()
                                Text("Request Sent   ")
                                    .frame(maxHeight: 20, alignment: .bottom)
                                    .foregroundColor(.white)
                                    .font(.system(size: 22))
                                    .padding(.trailing)
                                
                               Spacer()
                             
                                
                            }
                            .padding(.top)
                            
 
                            Text("We will contact you shortly")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .padding(.bottom)
                            Text("Suresh Upadhay")
                                .foregroundColor(.white)
                                .font(.system(size: 22))
                            
                            Text("CODE:SUPA25")
                                .foregroundColor(.white)
                                .font(.system(size: 16))
                            
                            Text("1701 Fleming Street,Hayneville")
                                .foregroundColor(.white)
                                .underline()
                                .font(.system(size: 16))
                                .padding()
                            
                            HStack {
                                VStack{
                                    Image(systemName: "phone.fill") // "call" symbol
                                        .foregroundColor(.white)
                                        .font(.system(size: 26))
                                    Text("call")
                                        .foregroundColor(.white)
                                }
                                .padding()
                                VStack{
                                    Image(systemName: "star.fill") // "star" symbol
                                        .foregroundColor(.white)
                                        .font(.system(size: 26))
                                    Text("Review")
                                        .foregroundColor(.white)
                                }
                                .padding()
                                VStack{
                                    Image(systemName: "paperplane.fill") // "send" symbol
                                        .foregroundColor(.white)
                                        .font(.system(size: 26))
                                    Text("Directions")
                                        .foregroundColor(.white)
                                }
                                .padding()
                                VStack{
                                    Image(systemName: "book.fill") // Book image
                                        .foregroundColor(.white)
                                        .font(.system(size: 26))
                                    Text("Read More")
                                        .foregroundColor(.white)
                                }
                            }
                            .padding(.horizontal)
                            .padding(.top, 140)
                            
                            Spacer()
                            
                            Text("Next")
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
    RequestSent()
}
