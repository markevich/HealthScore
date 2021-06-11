//
//  CurrentDatePublisher.swift
//  HealthScore
//
//  Created by Вячеслав Маркевич on 11.06.21.
//

import Foundation

class CurrentDatePublisher: ObservableObject {
    @Published var currentDate: Date = Date()
    var timer = Timer()

    init() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.currentDate = Date()
        }
    }
}
