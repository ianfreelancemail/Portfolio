//
//  AnalogClockViewModel.swift
//  Analog Clock (SwiftUI)
//
//  Created by Ian Talisic on 22/04/2023.
//

import Foundation
import SwiftUI

class ClockViewModel: ObservableObject {
    @Published var date: Date = Date()
    @Published var hourHandAngle: Angle = Angle(degrees: 90)
    @Published var minuteHandAngle: Angle = Angle(degrees: 90)
    var radius: CGFloat {
        min(UIScreen.main.bounds.width, UIScreen.main.bounds.height) / 2 - 30
    }

    var center: CGPoint {
        CGPoint(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2 - 40)
    }
    
    func updateTime() {
        date = Date()
        
        let hour = hour > 12 ? hour - 12 : hour
        let minuteFraction = Double(minute) / 60.0
        let hourAngleTemp = Angle.degrees((Double(hour) / 12.0) * 360.0)
        let minuteAngleTemp = Angle.degrees(minuteFraction * 30.0)
        
        withAnimation {
            hourHandAngle = hourAngleTemp + minuteAngleTemp
            minuteHandAngle = Angle.degrees(Double(seconds) / 60 * 360.0)
            
            print("\(Double(minute) / 60.0 * 360.0)")
            print("\(minute) MINUTE -> \(minuteHandAngle)")
        }
    }
    
    var hour: Int {
        return Calendar.current.component(.hour, from: date)
    }
    
    var minute: Int {
        return Calendar.current.component(.minute, from: date)
    }
    
    var seconds: Int {
        return Calendar.current.component(.second, from: date)
    }
}
