//
//  WeatherViewModel.swift
//  TallerUNAJWeatherApp
//
//  Created by itsupport on 16/08/2020.
//  Copyright © 2020 UNAJ. All rights reserved.
//

import Foundation

protocol WheaterViewModelInterface {
    func fetchWeatherByCity(cityName: String, completion: @escaping (MainWeatherModel?, Error?) -> Void)
}

class WeatherViewModel: WheaterViewModelInterface {
    let repositoryInstance = WeatherService()
    
    func fetchWeatherByCity(cityName: String, completion: @escaping (MainWeatherModel?, Error?) -> Void) {
        repositoryInstance.getWeatherByCity(cityName: cityName) { (result) in
            switch result {
            case .success(var weather):
                weather.temperature = self.kelvinTempToCelcius(kevinTemp: weather.temperature)
                completion(weather, nil)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func kelvinTempToCelcius(kevinTemp: TempModel) -> TempModel {
        return TempModel(temp: round(kevinTemp.temp - 273.15), tempMin: round(kevinTemp.tempMin - 273.15), tempMax: round(kevinTemp.tempMax - 273.15))
    }
}
