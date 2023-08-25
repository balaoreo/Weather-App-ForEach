//
//  ContentView.swift
//  For-Each
//
//  Created by Keona Balaoro on 9/27/22.
//

import SwiftUI

struct ContentView: View {
private let days = ["Monday: ",
                    "Tuesday: ",
                    "Wednesday: ",
                    "Thursday:",
                    "Friday: ",
                    "Saturday: ",
                    "Sunday: "]
    
private let Temperatures = [45,
                            63,
                            56,
                            49,
                            65,
                            58,
                            60]
    
private let weatherImageNames =  ["cloud.drizzle",
                                  "cloud.fog",
                                  "cloud.hail",
                                  "cloud.snow",
                                  "cloud.bolt",
                                  "sun.max",
                                  "wind.snow"]
    
    var body: some View {
        VStack {
        Text("Weather in Next Week:")
                .font(.title)
                .foregroundColor(.orange)
                .padding()
            VStack {
                ForEach(0 ..< days.count, id:\.self) { weatherIndex in
                    VStack {
                        Divider()
                        HStack {
                            Text("\(days[weatherIndex])")
                                .font(.caption)
                                .padding()
                            Image(systemName: weatherImageNames[weatherIndex])
                                .resizable()
                                .frame(width: 80, height: 80)
                                .scaledToFit()
                            Text("\(Temperatures[weatherIndex])℉")
                                .font(.caption)
                                .padding()
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
