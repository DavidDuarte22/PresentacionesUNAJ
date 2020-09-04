package com.unaj.tallerunajweatherapp.viewmodel

import androidx.lifecycle.MutableLiveData
import com.unaj.tallerunajweatherapp.model.TempModel
import com.unaj.tallerunajweatherapp.repository.WeatherImplementation
import com.unaj.tallerunajweatherapp.view.model.MainWeatherModel
import java.util.*
import kotlin.math.round

interface WeatherViewModel {
    fun fetchCityWeather(cityName: String)
}

class WeatherViewModelImplementation: WeatherViewModel {
    private val repository = WeatherImplementation()
    val cityWeather = MutableLiveData<MainWeatherModel>()

    override fun fetchCityWeather(cityName: String) {
        // Parte 3: crear metodo async con manejo de errores y liveData
        val weatherFromService= repository.fetchWeatherByCity(cityName)
        weatherFromService.temperature = kelvinTempToCelcius(weatherFromService.temperature)
        cityWeather.value = weatherFromService
    }

    private fun kelvinTempToCelcius(kevinTemp: TempModel): TempModel {
        return TempModel(round(kevinTemp.temp - 273.15),
            round(kevinTemp.tempMin - 273.15), round(kevinTemp.tempMax - 273.15))
    }
}