//
//  WeatherModel.swift
//  TallerUNAJWeatherApp
//
//  Created by itsupport on 21/08/2020.
//  Copyright © 2020 UNAJ. All rights reserved.
//

import Foundation

struct WeatherModel: Codable {
    let description: String
    
    init(description: String) {
        self.description = description
    }
}
