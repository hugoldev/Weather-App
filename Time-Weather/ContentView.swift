//
//  ContentView.swift
//  Time-Weather
//
//  Created by Hugo Lopes Mendonca on 08/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("LightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomLeading)
            .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Sanclerlãndia, GO")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("28°c")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                        .padding()
                }
                .padding(.bottom, 40)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 29)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 33)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.heavyrain.fill",
                                   temperature: 25)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.bolt.rain.fill",
                                   temperature: 22)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.sun.fill",
                                   temperature: 27)
                }
                Spacer()
                
                Button {
                    print ("tapped")
                } label: {
                    Text ("Change Day Time")
                        .frame (width: 280, height: 50)
                        .background (Color.white)
                        .font (.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .medium, design: .default))
            
            Image(systemName: imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°c")
                .font(.system(size: 17, weight: .medium))
                .foregroundColor(.white)
                
        }
    }
}
