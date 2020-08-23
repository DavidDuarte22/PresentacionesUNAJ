package com.unaj.tallerunajweatherapp.repository

import com.unaj.tallerunajweatherapp.model.TempModel
import com.unaj.tallerunajweatherapp.model.WeatherModel
import com.unaj.tallerunajweatherapp.view.model.MainWeatherModel

interface  WeatherRepository {
    fun fetchWeatherByCity(cityName: String): MainWeatherModel
}

class WeatherImplementation: WeatherRepository{

    override fun fetchWeatherByCity(cityName: String): MainWeatherModel {
        // Parte 3: Crear conexion con retrofit para obtener los datos de una API
        // o una DB local Room
         if (cityName == "La Plata") {
            return MainWeatherModel("La Plata, Buenos Aires",
                WeatherModel("cielo nublado"),
                TempModel(
                    284.08,
                    283.71,
                    284.82
                ))
        } else {
             return MainWeatherModel("Florencio Varela, Buenos Aires",
                 WeatherModel("cielo claro"),
                 TempModel(
                     284.18,
                     283.91,
                     285.82
                 ))
        }
    }
}