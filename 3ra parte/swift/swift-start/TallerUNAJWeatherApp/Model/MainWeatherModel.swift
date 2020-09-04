//
//  WeatherModel.swift
//  TallerUNAJWeatherApp
//
//  Created by itsupport on 16/08/2020.
//  Copyright © 2020 UNAJ. All rights reserved.
//

import Foundation

struct MainWeatherModel {
    let cityName: String
    let weather: [WeatherModel]
    var temperature: TempModel
    
    init(cityName: String, weather: [WeatherModel], temperature: TempModel) {
        self.cityName = cityName
        self.weather = weather
        self.temperature = temperature
    }
}

