//
//  ContentView.swift
//  HealthScore
//
//  Created by Вячеслав Маркевич on 11.06.21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var currentDatePublisher = CurrentDatePublisher()

    let timer = Timer.publish(
        every: 1,
        on: .main,
        in: .common
    ).autoconnect()

    var body: some View {
        VStack {
            IndicatorView(
                startDate: Date().addingTimeInterval(TimeInterval(-1)),
                endDate: Date().addingTimeInterval(TimeInterval(60))
            )
        }.environmentObject(currentDatePublisher)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
