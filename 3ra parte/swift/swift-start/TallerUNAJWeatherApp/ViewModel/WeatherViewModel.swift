//
//  WeatherViewModel.swift
//  TallerUNAJWeatherApp
//
//  Created by itsupport on 16/08/2020.
//  Copyright © 2020 UNAJ. All rights reserved.
//

import Foundation

protocol WheaterViewModelInterface {
    func fetchWeatherByCity(cityName: String) -> MainWeatherModel?
}

class WeatherViewModel: WheaterViewModelInterface {
    let repositoryInstance = WeatherService()
    
    func fetchWeatherByCity(cityName: String) -> MainWeatherModel? {
        var weather = repositoryInstance.fetchWeatherByCity(cityName: cityName)
        weather.temperature = kelvinTempToCelcius(kevinTemp: weather.temperature)
        return weather
    }
    
    func kelvinTempToCelcius(kevinTemp: TempModel) -> TempModel {
        return TempModel(temp: round(kevinTemp.temp - 273.15), tempMin: round(kevinTemp.tempMin - 273.15), tempMax: round(kevinTemp.tempMax - 273.15))
    }
}
