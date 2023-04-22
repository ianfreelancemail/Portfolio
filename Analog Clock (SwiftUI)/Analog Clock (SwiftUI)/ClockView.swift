//
//  ClockView.swift
//
//  Created by Ian Talisic on 22/04/2023.
//

import SwiftUI

struct ClockView: View {
    @ObservedObject var viewModel: ClockViewModel
    let timer = Timer.publish(every: 1, on: .current, in: .default).autoconnect()

    var body: some View {
        ZStack {
            Circle()
                .fill(Color.black)
                .shadow(radius: 5)
            
            timeLabelView
            minuteLineView

            Rectangle()
                .fill(Color.white)
                .frame(width: 2, height: viewModel.radius)
                .rotationEffect(viewModel.hourHandAngle)
                .offset(x: 0, y: 0)
            
            ZStack {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 1, height: viewModel.radius)
                    .padding(.trailing, 30)
            }
            .rotationEffect(viewModel.minuteHandAngle)
            .offset(x: -10, y: -10)


            
            Circle()
                .fill(Color.orange)
                .frame(width: 10, height: 10)
        }
        .onReceive(timer) { _ in
            viewModel.updateTime()
        }

    }
    
    var timeLabelView: some View {
        ForEach(1..<13) { hour in
            Text("\(hour)")
                .foregroundColor(Color.white)
                .font(.headline)
                .position(
                    x: viewModel.radius * cos(CGFloat(hour) * .pi / 6 - .pi / 2) + viewModel.center.x,
                    y: viewModel.radius * sin(CGFloat(hour) * .pi / 6 - .pi / 2) + viewModel.center.y - (UIFont.preferredFont(forTextStyle: .headline).pointSize / 2)
                )
        }
    }
    
    var minuteLineView: some View {
        ForEach(0..<60) { minute in
            if minute % 5 == 0 {
                EmptyView()
            } else {
                Rectangle()
                    .fill(Color.white)
                    .frame(width: minute % 5 == 0 ? 2 : 1, height: minute % 5 == 0 ? 10 : 5)
                    .rotationEffect(.degrees(Double(minute) * 6))
                    .position(
                        x: viewModel.radius * cos(CGFloat(minute) * .pi / 30 - .pi / 2) + viewModel.center.x - (minute % 5 == 0 ? 1 : 0.5),
                        y: viewModel.radius * sin(CGFloat(minute) * .pi / 30 - .pi / 2) + viewModel.center.y - (minute % 5 == 0 ? 5 : 2.5)
                    )
            }
        }
    }
}
