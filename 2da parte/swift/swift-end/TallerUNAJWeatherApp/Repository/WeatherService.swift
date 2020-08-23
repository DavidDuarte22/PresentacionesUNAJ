//
//  WeatherService.swift
//  TallerUNAJWeatherApp
//
//  Created by itsupport on 20/08/2020.
//  Copyright © 2020 UNAJ. All rights reserved.
//

import Foundation

class WeatherService {
    func fetchWeatherByCity(cityName: String) -> MainWeatherModel{
        if cityName == "La Plata" {
            return MainWeatherModel(cityName: "La Plata, Buenos Aires", weather: WeatherModel(description: "cielo nublado"), temperature: TempModel(temp: 284.08, tempMin: 283.71, tempMax: 284.82))
        } else {
            return MainWeatherModel(cityName: "Florencio Varela, Buenos Aires", weather: WeatherModel(description: "cielo claro"), temperature: TempModel(temp: 284.18, tempMin: 283.91, tempMax: 285.82))
        }
        
    }
}
