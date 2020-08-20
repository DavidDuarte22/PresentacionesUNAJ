package com.unaj.tallerunajweatherapp.view

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.unaj.tallerunajweatherapp.R
import com.unaj.tallerunajweatherapp.view.model.WeatherModel
import kotlinx.android.synthetic.main.activity_weather.*
import java.sql.Timestamp
import java.util.*

class WeatherActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_weather)

        val cityWeather = intent.extras?.get(WEATHER_OBJ) as WeatherModel
        loadWeather(cityWeather)

    }

    private fun loadWeather(weather: WeatherModel) {
        cityNameText.text = weather.cityName
        dateText.text = getDateTime(weather.timestamp)
        tempText.text = weather.temperature.temp.toString()
        minTempText.text = weather.temperature.tempMin.toString()
        maxTempText.text = weather.temperature.tempMax.toString()
    }

    private fun getDateTime(stamp: Long): String? {
        val date = Date(stamp)
        return date.toString()
    }
}