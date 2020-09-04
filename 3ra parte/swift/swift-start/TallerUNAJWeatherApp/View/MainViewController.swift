//
//  ViewController.swift
//  TallerUNAJWeatherApp
//
//  Created by itsupport on 16/08/2020.
//  Copyright © 2020 UNAJ. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    let viewModel = WeatherViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func searchButton(_ sender: Any) {
        guard let text = inputTextField.text, let weatherObj = viewModel.fetchWeatherByCity(cityName: text) else {
            return
        }
        
        let weatherVC = WeatherViewController(weather: weatherObj)
        navigationController?.pushViewController(weatherVC, animated: true)
    
        //print(inputTextField.text)
    }
    
}

/*
 {"coord": { "lon": 139,"lat": 35},
   "weather": [
     {
       "id": 800,
       "main": "Clear",
       "description": "clear sky",
       "icon": "01n"
     }
   ],
   "base": "stations",
   "main": {
     "temp": 281.52,
     "feels_like": 278.99,
     "temp_min": 280.15,
     "temp_max": 283.71,
     "pressure": 1016,
     "humidity": 93
   },
   "wind": {
     "speed": 0.47,
     "deg": 107.538
   },
   "clouds": {
     "all": 2
   },
   "dt": 1560350192,
   "sys": {
     "type": 3,
     "id": 2019346,
     "message": 0.0065,
     "country": "JP",
     "sunrise": 1560281377,
     "sunset": 1560333478
   },
   "timezone": 32400,
   "id": 1851632,
   "name": "Shuzenji",
   "cod": 200
 }
 */
