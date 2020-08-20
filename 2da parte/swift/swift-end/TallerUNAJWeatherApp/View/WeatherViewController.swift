//
//  WeatherViewController.swift
//  TallerUNAJWeatherApp
//
//  Created by itsupport on 17/08/2020.
//  Copyright © 2020 UNAJ. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {
    
    var weatherObj: WeatherModel
    
    @IBOutlet weak var weatherTitle: UILabel!
    @IBOutlet weak var weatherDate: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var minTempLabel: UILabel!
    @IBOutlet weak var maxTempLabel: UILabel!
        
    override func viewDidLoad() {
        loadWeatherUI(cityWeather: weatherObj)
    }
    
    required init(weather: WeatherModel) {
        self.weatherObj = weather
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func loadWeatherUI(cityWeather: WeatherModel) {
        self.weatherTitle.text = cityWeather.cityName
        self.weatherDate.text = getDateTime(timestamp: cityWeather.timezone) ?? " "
        self.tempLabel.text = String(cityWeather.temperature.temp)
        self.minTempLabel.text = String(cityWeather.temperature.tempMin)
        self.maxTempLabel.text = String(cityWeather.temperature.tempMax)
    }
    
    func getDateTime(timestamp: TimeInterval) -> String? {
        return timestamp.stringFromTimeInterval()
    }
    
}


extension TimeInterval{

    func stringFromTimeInterval() -> String {

        let time = NSInteger(self)

        let ms = Int((self.truncatingRemainder(dividingBy: 1)) * 1000)
        let seconds = time % 60
        let minutes = (time / 60) % 60
        let hours = (time / 3600)

        return String(format: "%0.2d:%0.2d:%0.2d.%0.3d",hours,minutes,seconds,ms)

    }
}
