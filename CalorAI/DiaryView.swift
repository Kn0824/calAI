//
//  DiaryView.swift
//  CalorAI
//
//  Created by Gyu-Min Noh on 1/25/26.
//

import SwiftUI

struct DiaryView: View {
    @State private var meals: [Meal] = [
        Meal(type: .breakfast, entries: [
            FoodEntry(name: "Oatmeal", calories: 150, protein: 5, carbs: 27, fat: 3, grams: 100)
        ]),
        Meal(type: .lunch, entries: []),
        Meal(type: .dinner, entries: [])
    ]
    var body: some View {
        NavigationStack {
            ZStack {
                // Background
                Color(red: 0.2, green: 0.3, blue: 0.6)
                    .ignoresSafeArea()
                
                VStack {
                    // Calories
                    Meters(curr: 1200, max: 2500, trackingMacro: "Calories")
                    HStack {
                        // Protein
                        Meters(curr: 90, max: 180, trackingMacro: "Protein")
                        Spacer()
                        // Carbs
                        Meters(curr: 150, max: 200, trackingMacro: "Carbs")
                        Spacer()
                        // Fat
                        Meters(curr: 50, max: 70, trackingMacro: "Fats")
                    }
                    .font(.caption)
                    .padding(.vertical, 10)
                    
                    Divider()
                        .rotationEffect(.degrees(90))
                        .frame(width: 40)
                        .foregroundColor(.white)
                    
                    ScrollView {
                        VStack(spacing: 16) {
                            ForEach($meals) { $meal in
                                MealSection(
                                    meal: $meal)
                            }
                            // Breakfast
                            
                            // Lunch
                            
                            // Dinner
                            
                            // Snacks
                        }
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 20)
                }
                .foregroundColor(.white)
            }
        }
    }

}

#Preview {
    DiaryView()
}

