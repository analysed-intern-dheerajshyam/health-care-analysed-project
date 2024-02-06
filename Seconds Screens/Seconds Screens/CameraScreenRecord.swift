//
//  CameraScreenRecord.swift
//  Seconds Screens
//
//  Created by Harapriya on 06/02/24.
//

import SwiftUI

struct CameraScreenRecord: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.9)
            
            VStack {
                
                //MARK: NAVIGATION Bar:-
                HStack {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .foregroundStyle(.orange)
                        .imageScale(.small)
                        .frame(width: 14, height: 20)
                        .padding(.horizontal, 20)
                    VStack {
                        Text("Camera is ON")
                            .foregroundColor(.orange)
                            .font(.system(size: 14))
                        Text("Your being recorded!")
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(10)
                    
                    Image(systemName: "camera")
                        .padding(.horizontal, 20)
                        .foregroundStyle(.white)
                }
                .frame(maxWidth: .infinity, maxHeight: 46)
                .padding(.top, 70)
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 24)
                    .frame(maxWidth: .infinity, maxHeight: 256)
                    .foregroundStyle(.gray.opacity(0.5))
                    .overlay {
                        
                        
                        VStack {
                            //MARK: CollectionView:-
                            Spacer()
                            HStack(spacing: 26) {
                                RoundedRectangle(cornerRadius: 14)
                                    .frame(maxWidth: 98, maxHeight: 92)
                                    .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96))
                                    .opacity(0.6)
                                    .overlay{
                                        VStack {
                                            Image(systemName: "clock")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 24, height: 24)
                                                .foregroundColor(.orange)
                                            Text("0.59")
                                                .foregroundColor(.black)
                                                .font(.custom("Cabin", size: 18))
                                            Text("Minutes")
                                                .foregroundColor(.black)
                                                .font(.custom("Cabin", size: 18))
                                        }
                                    }
                                RoundedRectangle(cornerRadius: 14)
                                    .frame(maxWidth: 98, maxHeight: 92)
                                    .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96))
                                    .opacity(0.6)
                                    .overlay{
                                        VStack {
                                            Image(systemName: "repeat")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width: 24, height: 24)
                                                        .foregroundColor(.orange)
                                            Text("1st")
                                                .foregroundColor(.black)
                                                .font(.custom("Cabin", size: 18))
                                            Text("Rep")
                                                .foregroundColor(.black)
                                                .font(.custom("Cabin", size: 18))
                                        }
                                    }
                                RoundedRectangle(cornerRadius: 14)
                                    .frame(maxWidth: 98, maxHeight: 92)
                                    .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96))
                                    .opacity(0.6)
                                    .overlay{
                                        VStack {
                                            Image(systemName: "flame")
                                                       .resizable()
                                                       .aspectRatio(contentMode: .fit)
                                                       .frame(width: 24, height: 24)
                                                       .foregroundColor(.orange)
                                            Text("19.5")
                                                .foregroundColor(.black)
                                                .font(.custom("Cabin", size: 18))
                                            Text("Calories")
                                                .foregroundColor(.black)
                                                .font(.custom("Cabin", size: 18))
                                            
                                        }
                                    }
                            }
                            .padding(.horizontal, 20)
                            
                            //MARK: Buttons:-
                            HStack {
                                Button(action: {
                                    
                                }, label: {
                                    HStack {
                                        Image(systemName: "gear")
                                            .resizable()
                                            .frame(maxWidth: 20, maxHeight: 20)
                                        Text("Start")
                                            .font(.title3)
                                    }
                                    .foregroundStyle(.white)
                                    .frame(width: 126, height: 40)
                                    .background(.orange)
                                    .cornerRadius(24)
                                })
                                .padding()
                                Button(action: {
                                    
                                }, label: {
                                    HStack {
                                        Image(systemName: "gear")
                                            .resizable()
                                            .frame(maxWidth: 20, maxHeight: 20)
                                        Text("Stop")
                                            .font(.title3)
                                    }
                                    .foregroundStyle(.white)
                                    .frame(width: 126, height: 40)
                                    .background(.orange)
                                    .cornerRadius(24)
                                })
                            }
                            .padding([.top, .bottom], 20)
                        }
                    }
            }
        }
        .ignoresSafeArea()
        
    }
    
    
}


#Preview {
    CameraScreenRecord()
}
