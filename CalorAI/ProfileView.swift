//
//  ProfileView.swift
//  CalorAI
//
//  Created by Gyu-Min Noh on 1/25/26.
//

import SwiftUI

struct ProfileView: View {
    @State var showSettings: Bool = false
    @State var name: String = "Kevin"
    @State var age: String = "23"
    @State var userHeight: String = "187.0"
    @State var userWeight: String = "85.0"
    @State var goalWeight: String = "81.0"
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Background
                Color(red: 0.2, green: 0.3, blue: 0.6)
                    .ignoresSafeArea()
                
                VStack {
                    HStack{
                        VStack(alignment: .leading){
                            // Profile info
                            Text("Name: \(name)")
                            Text("Age: \(age)")
                            Text("Height: \(userHeight)cm")
                            Text("Current Weight: \(userWeight)kg")
                            Text("Goal Weight: \(goalWeight)kg")
                        }
                        .foregroundColor(.white)
                        .font(.title3)
                        
                        Spacer()
                        Image(systemName: "person.fill")
                            .font(.system(size: 40))
                            .frame(width: 100, height: 100)
                            .background(.white)
                            .clipShape(.rect(cornerRadius: 25))
                            .padding(5)
                    }
                    .padding(10)
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            showSettings.toggle()
                        } label: {
                            Image(systemName: "gearshape.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                        }
                        .padding(.trailing)
                        .sheet(isPresented: $showSettings) {
                            SettingsView(newName: $name, newAge: $age, newHeight: $userHeight, newCurrWeight: $userWeight, newGoalWeight: $goalWeight)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
