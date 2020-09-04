package com.unaj.tallerunajweatherapp.view.model

import android.os.Parcelable
import com.unaj.tallerunajweatherapp.model.TempModel
import com.unaj.tallerunajweatherapp.model.WeatherModel
import kotlinx.android.parcel.Parcelize

@Parcelize
data class MainWeatherModel (
    val cityName: String,
    val description: List<WeatherModel>,
    var temperature: TempModel
): Parcelable
