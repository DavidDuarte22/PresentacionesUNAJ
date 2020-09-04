//
//  WeatherService.swift
//  TallerUNAJWeatherApp
//
//  Created by itsupport on 20/08/2020.
//  Copyright © 2020 UNAJ. All rights reserved.
//

import Foundation
import Alamofire

class WeatherService {
    
    let baseUrl = "http://api.openweathermap.org"
    let token = "42da757df1dd57f50c6c9dd0751757e3"
    
    func getWeatherByCity(cityName: String, completion: @escaping (Result<MainWeatherModel, Error>) -> Void) {

        let parameters: Parameters = [
            "q": cityName,
            "appid": token,
            "lang": "es"
        ]
        
        let path = baseUrl + "/data/2.5/weather"

        AF.request(path, method: .get, parameters: parameters, encoding: URLEncoding.default)
            .responseDecodable(of: MainWeatherModel.self) { response in
                print(response)
                guard let weather = response.value else {
                    return
                }
                completion(.success(weather))
        }
    }
}

//    func fetchWeatherByCity(cityName: String) -> MainWeatherModel{
//        if cityName == "La Plata" {
//            return MainWeatherModel(cityName: "La Plata, Buenos Aires", weather: [WeatherModel(description: "cielo nublado")], temperature: TempModel(temp: 284.08, tempMin: 283.71, tempMax: 284.82))
//        } else {
//            return MainWeatherModel(cityName: "Florencio Varela, Buenos Aires", weather: [WeatherModel(description: "cielo claro")], temperature: TempModel(temp: 284.18, tempMin: 283.91, tempMax: 285.82))
//        }
//
//    }
