//
//  VO2Page.swift
//  Seconds Screens
//
//  Created by Harapriya on 06/02/24.
//

import SwiftUI
import Charts

struct SiteView: Identifiable {
    var id = UUID().uuidString
    var hour: Date
    var views: Double
    var animate: Bool = false
}

extension Date {
    func updateHour(value: Int) -> Date {
        let calendar = Calendar.current
        return calendar.date(bySettingHour: value, minute: 0, second: 0, of: self) ?? .now
    }
}

var sasmple_analytics: [SiteView] = [
    SiteView(hour: Date().updateHour(value: 8), views: 9000),
    SiteView(hour: Date().updateHour(value: 9), views: 1000),
    SiteView(hour: Date().updateHour(value: 10), views: 8000),
    SiteView(hour: Date().updateHour(value: 11), views: 1000),
    SiteView(hour: Date().updateHour(value: 12), views: 9000),
    SiteView(hour: Date().updateHour(value: 13), views: 1000)

 
]

struct VO2Page: View {
    @State var sampleAnalytics: [SiteView] = sasmple_analytics
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black
                    .opacity(0.9)
                ZStack {
                    Color.gray
                        .opacity(0.5)
                        .cornerRadius(24)
                        .padding(.top, 100)
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Image(systemName: "chevron.left")
                                .resizable()
                                .foregroundStyle(.orange)
                                .imageScale(.small)
                                .frame(width: 14, height: 20)
                                .padding()
                            Text("VO2")
                                .foregroundColor(.orange)
                                .font(.custom("Cabin", size: 32))                                    .fontWeight(.bold)
                        }
                        .padding(.top, 110)
                        animatedChart()
                        Spacer()
                        ZStack{
                            Color.orange
                                .cornerRadius(24)
                                .frame(maxWidth: .infinity, maxHeight: 300)
                            VStack(spacing:20){
                                Text("Activity Reports")
                                    .font(.title)
                                    .foregroundColor(.white)
                                ZStack{
                                    RoundedRectangle(cornerRadius: 24)
                                        .foregroundColor(.white)
                                        .frame(width: 330,height: 56)
                                    HStack(spacing:140){
                                        Text("41 superior")
                                            .font(.custom("Cabin", size: 20))
                                        Text("1:00pm")
                                            .font(.custom("Cabin", size: 18))
                                    }
                                   
                                }
                               
                            ZStack{
                                RoundedRectangle(cornerRadius: 24)
                                    .foregroundColor(.white)
                                    .frame(width: 330,height: 56)
                                HStack(spacing:48){
                                    Text("0.00 superior ")
                                        .font(.custom("Cabin", size: 20))
                                        
                                    Text("14 th January 2024")
                                        .font(.custom("Cabin", size: 14))
                                        
                                }
                                 
                            }
                                ZStack{
                                    RoundedRectangle(cornerRadius: 24)
                                        .foregroundColor(.white)
                                        .frame(width: 330,height: 56)
                                    HStack(spacing:110){
                                        Text("53 superior ")
                                            .font(.custom("Cabin", size: 20))
                                        Text("12:00pm ")
                                            .font(.custom("Cabin", size: 18))
                                    }
                                   
                                }
                                
                                    
                            }
                            

                        } //
                        
                        
                    }
                    
                }
                
            }
            .ignoresSafeArea()
        }
        
    }
    
    @ViewBuilder
    func animatedChart() -> some View {
        let max = sampleAnalytics.max { item1, item2 in
            return item2.views > item1.views
        }?.views ?? 0
        Chart {
            ForEach(sampleAnalytics) { item in
                LineMark(x: .value("Hours", item.hour, unit: .hour),
                         y: .value("View", item.views)
                )
            }
        }
        .padding()
        .accentColor(.orange)
        .chartYScale(domain: 0...(max + 1000))
        .frame(maxWidth: .infinity, maxHeight: 400)
        .chartXAxis {AxisMarks(values: .automatic) {
            AxisValueLabel()
                .foregroundStyle(Color.white)
            AxisGridLine()
                .foregroundStyle(Color.white)
        }
        }
        .chartYAxis {AxisMarks(values: .automatic) {
            AxisValueLabel()
                .foregroundStyle(Color.white)
            AxisGridLine()
                .foregroundStyle(Color.white)
        }
        }
    }
}



struct VO2Page_Previews: PreviewProvider {
    static var previews: some View {
        VO2Page()
    }
}
