package com.unaj.tallerunajweatherapp.view

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.unaj.tallerunajweatherapp.R
import com.unaj.tallerunajweatherapp.model.TempModel
import com.unaj.tallerunajweatherapp.view.model.WeatherModel
import kotlinx.android.synthetic.main.activity_main.*
import java.io.Serializable
import java.sql.Timestamp
import java.util.*

const val WEATHER_OBJ = "com.example.myfirstapp.weatherObject"

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        searchAction()
    }

    fun searchAction() {
        searchButton.setOnClickListener {
            val cityName = inputFieldText.text.toString()
            val intent = Intent(this, WeatherActivity::class.java)
                val weather = WeatherModel("Buenos Aires, CABA",
                    324000,
                    TempModel(
                           281.52,
                        280.15,
                        283.72
                    )
                )
                intent.putExtra(WEATHER_OBJ, weather as Serializable)

            startActivity(intent)
        }
    }
}