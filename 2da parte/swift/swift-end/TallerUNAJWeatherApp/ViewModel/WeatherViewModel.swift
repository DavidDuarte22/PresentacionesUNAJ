//
//  WeatherViewModel.swift
//  TallerUNAJWeatherApp
//
//  Created by itsupport on 16/08/2020.
//  Copyright © 2020 UNAJ. All rights reserved.
//

import Foundation

class WeatherViewModel {
    let repositoryInstance = WeatherService()
    
    func fetchWeatherByCity(cityName: String) -> WeatherModel? {
        let weather = repositoryInstance.fetchWeatherByCity(cityName: cityName)
        return weather
    }
}
