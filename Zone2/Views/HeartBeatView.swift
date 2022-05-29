//
//  HeartBeatView.swift
//  Zone2
//
//  Created by Joshua Baker on 5/28/22.
//

import SwiftUI

struct HeartBeatView: View {
    init(_ bpm: Int = 42) { self.bpm = bpm }

    var bpm: Int
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.red)
                .padding()
            Group {
                Text(String(bpm))
                    .font(.system(size: 100).bold())
                    .foregroundColor(Color.white)
                Heart().padding(.top, 175)
            }.padding(.bottom, 50)
        }
    }
}

struct Heart: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 50, height: 50, alignment: .center)
                .foregroundColor(.white)
                .cornerRadius(5)
            Circle()
                .frame(width: 50, height: 50, alignment: .center)
                .foregroundColor(.white)
                .padding(.top, -50)
            Circle()
                .frame(width: 50, height: 50, alignment: .center)
                .foregroundColor(.white)
                .padding(.trailing, -50)
        }
        .rotationEffect(Angle(degrees: -45))
    }
}

struct HeartBeatView_Previews: PreviewProvider {
    static var previews: some View {
        HeartBeatView()
    }
}
