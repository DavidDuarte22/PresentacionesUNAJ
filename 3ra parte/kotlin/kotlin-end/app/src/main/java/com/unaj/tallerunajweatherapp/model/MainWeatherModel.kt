package com.unaj.tallerunajweatherapp.view.model

import android.os.Parcelable
import com.google.gson.annotations.SerializedName
import com.unaj.tallerunajweatherapp.model.TempModel
import com.unaj.tallerunajweatherapp.model.WeatherModel
import kotlinx.android.parcel.Parcelize

@Parcelize
data class MainWeatherModel (
    @SerializedName("name")
    val cityName: String,
    @SerializedName("weather")
    val description: List<WeatherModel>,
    @SerializedName("main")
    var temperature: TempModel
): Parcelable
