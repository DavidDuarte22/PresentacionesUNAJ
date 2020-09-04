package com.unaj.tallerunajweatherapp.repository

import com.google.gson.Gson
import com.unaj.tallerunajweatherapp.repository.networking.buildApiService
import com.unaj.tallerunajweatherapp.view.model.MainWeatherModel

interface  WeatherRepository {
    suspend fun fetchWeatherByCity(cityName: String): Result<MainWeatherModel>
}

class WeatherImplementation: WeatherRepository{

    private val apiService by lazy { buildApiService() }
    private val gson = Gson()

    private val token = "42da757df1dd57f50c6c9dd0751757e3"
    private val language = "es"

    override suspend fun fetchWeatherByCity(cityName: String) =
        try {
        val data = apiService.fetchWeatherByCity(cityName, token, language)
        Success(data)
    } catch (error: Throwable) {
        Failure(error)
    }
}

sealed class Result<out T : Any>

data class Success<out T : Any>(val data: T) : Result<T>()

data class Failure(val error: Throwable?) : Result<Nothing>()