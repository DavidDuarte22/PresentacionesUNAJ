package com.unaj.tallerunajweatherapp.viewmodel

import androidx.lifecycle.MutableLiveData
import com.unaj.tallerunajweatherapp.model.TempModel
import com.unaj.tallerunajweatherapp.repository.Failure
import com.unaj.tallerunajweatherapp.repository.Success
import com.unaj.tallerunajweatherapp.repository.WeatherImplementation
import com.unaj.tallerunajweatherapp.repository.networking.buildApiService
import com.unaj.tallerunajweatherapp.view.model.MainWeatherModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withContext
import kotlin.math.round

interface WeatherViewModel {
    fun fetchCityWeather(cityName: String)
}

class WeatherViewModelImplementation: WeatherViewModel {
    private val repository = WeatherImplementation()
    val cityWeather = MutableLiveData<MainWeatherModel>()

    override fun fetchCityWeather(cityName: String) {
        // Parte 3: crear metodo async con manejo de errores y liveData
        runBlocking {
            withContext(Dispatchers.Default) {
                val weatherFromService= repository.fetchWeatherByCity(cityName)
                when(weatherFromService) {
                    is Success -> {
                        weatherFromService.data.temperature = kelvinTempToCelcius(weatherFromService.data.temperature)
                        cityWeather.postValue(weatherFromService.data)
                    }
                    is Failure -> {
                        // show error .
                    }
                }
              //  print(weatherFromService)
            }
        }

    }

    private fun kelvinTempToCelcius(kevinTemp: TempModel): TempModel {
        return TempModel(round(kevinTemp.temp - 273.15),
            round(kevinTemp.tempMin - 273.15), round(kevinTemp.tempMax - 273.15))
    }
}