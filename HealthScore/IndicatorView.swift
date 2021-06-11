//
//  IndicatorView.swift
//  HealthScore
//
//  Created by Вячеслав Маркевич on 11.06.21.
//

import SwiftUI

struct IndicatorView: View {
    @EnvironmentObject var currentDatePublisher: CurrentDatePublisher
    @State var startDate : Date
    @State var endDate : Date
    
    var body: some View {
        
        VStack {
            ProgressView(
                value: Float(
                    currentDatePublisher.currentDate.timeIntervalSince(
                        startDate
                    )
                ),
                total: Float(endDate.timeIntervalSince(startDate))
            )
            Text(String(Float(currentDatePublisher.currentDate.timeIntervalSince(startDate))))
            Text("/")
            Text(String(Float(endDate.timeIntervalSince(startDate))))
        }
    }
}

struct IndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorView(
            startDate: Date().addingTimeInterval(-100),
            endDate: Date().addingTimeInterval(100)
        )
    }
}
