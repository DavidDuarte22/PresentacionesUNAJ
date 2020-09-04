//
//  TempModel.swift
//  TallerUNAJWeatherApp
//
//  Created by itsupport on 16/08/2020.
//  Copyright © 2020 UNAJ. All rights reserved.
//

import Foundation

struct TempModel {
    let temp: Double
    let tempMin: Double
    let tempMax: Double

    init(temp: Double, tempMin: Double, tempMax: Double) {
        self.temp = temp
        self.tempMin = tempMin
        self.tempMax = tempMax
    }
}

/*
"main": {
  "temp": 281.52,
  "feels_like": 278.99,
  "temp_min": 280.15,
  "temp_max": 283.71,
  "pressure": 1016,
  "humidity": 93
},
*/
