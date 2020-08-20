//
//  WeatherService.swift
//  TallerUNAJWeatherApp
//
//  Created by itsupport on 20/08/2020.
//  Copyright © 2020 UNAJ. All rights reserved.
//

import Foundation

class WeatherService {
    func fetchWeatherByCity(cityName: String) -> WeatherModel{
        return WeatherModel(cityName: "La Plata, Buenos Aires", timezone: -10800, temperature: TempModel(temp: 284.08, tempMin: 283.71, tempMax: 284.82))
    }
}
