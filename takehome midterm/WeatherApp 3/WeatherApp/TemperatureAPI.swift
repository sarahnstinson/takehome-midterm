//
//  TemperatureAPI.swift
//  WeatherApp
//
//  Created by user232369 on 3/31/23.
//

import UIKit
import Foundation

let apiKey = "f37950cb8dfc00451d746c942329619d"

let data: Data? = """

""".data(using: .utf8)

struct WeatherMain: Codable {
    var temp: Double?
}

struct WeatherMain: Codable{
    let main: Weather
}

func decodeJSONData(JSONData: Data){
    do{
        let weatherData = try? JSONDecoder().decode(WeatherMain.self,from:JSONData)
        if let weatherData = weatherData{
            let weather = weatherData.main
            print(weather.temp!)
        }
    }
}

func pullJSONData(url: URL?, forecast: Bool){
    let task = URLSession.shared.dataTask(with: url!) { data, response, error in if let error = error {
        print("Error : \(error.localizedDescription)")
    }
        guard let response = response as? HTTPURLResponse, response.statusCode == 200
            else{
            print("Error: HTTP Response Code Error")
            return
        }
        
        if (!forecast){
            decodeJSONData(JSONData: data ?? <#default value#>!)
        } else {
            
        }
    }
    task.resume()
}

let city: String = "College Station"
let url = URL(string:
                https://api.openweathermap.org/data/2.5/weather?q={CollegeStation}&appid={f37950cb8dfc00451d746c942329619d)

pullJSONData(url: url, forecast: false)
