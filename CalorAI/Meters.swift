//
//  Meters.swift
//  CalorAI
//
//  Created by Gyu-Min Noh on 1/25/26.
//



import SwiftUI

struct Meters: View {
    @State var curr: Double
    @State var max: Double
    @State var trackingMacro: String
    var body: some View {
        VStack {
            HStack {
                Text(trackingMacro)
                Spacer()
                Text("\(Int(curr))/ \(Int(max))")
                    .foregroundColor(.gray)
            }
            
            ProgressView(value: curr, total: max)
                .tint(.blue)
        }
    }
}

#Preview {
    Meters(curr: 1200, max: 2500, trackingMacro: "Calories")
}
