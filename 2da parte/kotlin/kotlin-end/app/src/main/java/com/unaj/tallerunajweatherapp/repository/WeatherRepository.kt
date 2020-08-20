package com.unaj.tallerunajweatherapp.repository

import com.unaj.tallerunajweatherapp.model.TempModel
import com.unaj.tallerunajweatherapp.view.model.WeatherModel

interface  WeatherRepository {
    fun fetchWeatherByCity(cityName: String): WeatherModel
}

class WeatherImplementation: WeatherRepository{

    override fun fetchWeatherByCity(cityName: String): WeatherModel {
        // Parte 3: Crear conexion con retrofit para obtener los datos de una API
        // o una DB local Room
         if (cityName == "La Plata") {
            return WeatherModel("La Plata, Buenos Aires",
                -10800,
                TempModel(
                    284.08,
                    283.71,
                    284.82
                ))
        } else {
             return WeatherModel("Comuna 13, CABA",
                 -10870,
                 TempModel(
                     284.18,
                     283.91,
                     285.82
                 ))
        }
    }
}