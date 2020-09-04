//
//  WeatherViewController.swift
//  TallerUNAJWeatherApp
//
//  Created by itsupport on 17/08/2020.
//  Copyright © 2020 UNAJ. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {
    
    var weatherObj: MainWeatherModel
    let viewModel = WeatherViewModel()

    @IBOutlet weak var weatherTitle: UILabel!
    @IBOutlet weak var weatherDate: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var minTempLabel: UILabel!
    @IBOutlet weak var maxTempLabel: UILabel!
        
    override func viewDidLoad() {
        loadWeatherUI(cityWeather: weatherObj)
    }
    
    required init(weather: MainWeatherModel) {
        self.weatherObj = weather
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func loadWeatherUI(cityWeather: MainWeatherModel) {
        self.weatherTitle.text = cityWeather.cityName
        self.weatherDate.text = "Hoy esta el " + cityWeather.weather[0].description
        self.tempLabel.text = String(cityWeather.temperature.temp)
        self.minTempLabel.text = String(cityWeather.temperature.tempMin)
        self.maxTempLabel.text = String(cityWeather.temperature.tempMax)
    }
    
    
}
