package com.unaj.tallerunajweatherapp.view

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.os.Parcelable
import com.unaj.tallerunajweatherapp.R
import com.unaj.tallerunajweatherapp.viewmodel.WeatherViewModelImplementation
import kotlinx.android.synthetic.main.activity_main.*

const val WEATHER_OBJ = "com.example.myfirstapp.weatherObject"

class MainActivity : AppCompatActivity() {

    private val viewModel = WeatherViewModelImplementation()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        searchAction()

        viewModel.cityWeather.observe(this, androidx.lifecycle.Observer { weather ->
            val intent = Intent(this, WeatherActivity::class.java)
            intent.putExtra(WEATHER_OBJ, weather as Parcelable)
            startActivity(intent)
        })
    }

    private fun searchAction() {
        searchButton.setOnClickListener {
            val cityName = inputFieldText.text.toString()
            viewModel.fetchCityWeather(cityName)
        }
    }
}