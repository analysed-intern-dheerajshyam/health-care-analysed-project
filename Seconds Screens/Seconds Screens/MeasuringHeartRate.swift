//
//  MeasuringHeartRate.swift
//  Seconds Screens
//
//  Created by Harapriya on 08/02/24.
//

import SwiftUI
import Charts

struct SiteView2: Identifiable {
    var id = UUID().uuidString
    var hour: Date
    var views: Double
    var animate: Bool = false
}

extension Date {
    func updateHour2(value: Int) -> Date {
        let calendar = Calendar.current
        return calendar.date(bySettingHour: value, minute: 0, second: 0, of: self) ?? .now
    }
}

var sasmple_analytics2: [SiteView] = [
    SiteView(hour: Date().updateHour(value: 8), views: 9000),
    SiteView(hour: Date().updateHour(value: 9), views: 1000),
    SiteView(hour: Date().updateHour(value: 10), views: 8000),
    SiteView(hour: Date().updateHour(value: 11), views: 1000),
    SiteView(hour: Date().updateHour(value: 12), views: 9000),
    SiteView(hour: Date().updateHour(value: 13), views: 1000)

 
]

struct MeasuringHeartRate: View {
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
                            
                            Text("Measuring  Heart Rate")
                                
                                .foregroundColor(.orange)
                                .font(.custom("Cabin", size: 32))                                    .fontWeight(.bold)
                        }
                        .padding(.top, 120)
                        .padding(.leading, 20)
                        HStack {
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
                        }
                        .padding(.horizontal, 120)
                        animatedChart()
                        Spacer()
                        ZStack{
                            Color.orange
                                .cornerRadius(24)
                                .frame(maxWidth: .infinity, maxHeight: 260)
                            VStack(spacing:20){
                                Text("14th January 2024")
                                    .font(.custom("Cabin", size: 28))
                                    .foregroundColor(.white)
                                    .padding()
                                HStack{
                                    HStack(spacing: 0){
                                        Text("80.00")
                                            .foregroundColor(.white)
                                            .font(.custom("Cabin", size: 22))
                                        Text("BPM")
                                            .foregroundColor(.white)
                                            .font(.custom("Cabin", size: 14))
                                    }
                                    HStack(spacing: 0){
                                        Text("100.00")
                                            .foregroundColor(.white)
                                            .font(.custom("Cabin", size: 22))
                                        Text("BPM")
                                            .foregroundColor(.white)
                                            .font(.custom("Cabin", size: 14))
                                    }
                                    HStack(spacing: 0){
                                        Text("155")
                                            .foregroundColor(.white)
                                            .font(.custom("Cabin", size: 22))
                                        Text("BPM")
                                            .foregroundColor(.white)
                                            .font(.custom("Cabin", size: 14))
                                    }
                                }
                                HStack(spacing: 10) {
                                    Text("Minimum  HR")
                                        .foregroundColor(.white)
                                        .font(.custom("Cabin", size: 14))
                                    Text("Average  HR")
                                        .foregroundColor(.white)
                                        .font(.custom("Cabin", size: 14))
                                    Text("Maximum  HR")
                                        .foregroundColor(.white)
                                        .font(.custom("Cabin", size: 14))
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
        .frame(maxWidth: .infinity, maxHeight: 340)
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

#Preview {
    MeasuringHeartRate()
}
