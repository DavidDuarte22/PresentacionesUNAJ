package com.unaj.tallerunajweatherapp.repository.networking

import com.unaj.tallerunajweatherapp.view.model.MainWeatherModel
import okhttp3.ResponseBody
import retrofit2.Call
import retrofit2.http.GET
import retrofit2.http.Query

interface ApiService {
    @GET("/data/2.5/weather")
    suspend fun fetchWeatherByCity(
        @Query("q") cityName: String,
        @Query("appid") token: String,
        @Query("lang") language: String
    ): MainWeatherModel
}