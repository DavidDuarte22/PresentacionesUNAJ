package com.unaj.tallerunajweatherapp.view

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.unaj.tallerunajweatherapp.R
import com.unaj.tallerunajweatherapp.view.model.MainWeatherModel
import com.unaj.tallerunajweatherapp.viewmodel.WeatherViewModelImplementation
import kotlinx.android.synthetic.main.activity_weather.*

class WeatherActivity : AppCompatActivity() {
    private val viewModel = WeatherViewModelImplementation()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_weather)

        val cityWeather = intent.extras?.get(WEATHER_OBJ) as MainWeatherModel
        loadWeather(cityWeather)

    }

    private fun loadWeather(mainWeather: MainWeatherModel) {
        cityNameText.text = mainWeather.cityName
        dateText.text = "Hoy esta el " + mainWeather.description[0].description
        tempText.text = mainWeather.temperature.temp.toString()
        minTempText.text = mainWeather.temperature.tempMin.toString()
        maxTempText.text = mainWeather.temperature.tempMax.toString()
    }
}