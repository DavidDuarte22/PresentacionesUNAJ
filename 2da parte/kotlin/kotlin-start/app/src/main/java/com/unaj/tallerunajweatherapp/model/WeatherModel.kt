package com.unaj.tallerunajweatherapp.view.model

import android.os.Parcelable
import com.unaj.tallerunajweatherapp.model.TempModel
import kotlinx.android.parcel.Parcelize
import java.io.Serializable
import java.sql.Timestamp

@Parcelize
data class WeatherModel (
    val cityName: String,
    val timestamp: Long,
    var temperature: TempModel
): Parcelable
