//
//  ContentView.swift
//  WeatherApp
//
//  Created by Jackson Wiese on 2/6/23.
//

//import SwiftUI
import SwiftUI


struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background1")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                
                Image("clearday")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                HStack{
                    Text("Today's Weather")
                        .font(.largeTitle)
                        .foregroundColor(Color.green)
                        .padding()
                    
                    Text("72ºF")
                        .font(.largeTitle)
                        .foregroundColor(Color.green)
                        .padding()
                } //closes VStack
                
                Spacer()
                
            
            
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
