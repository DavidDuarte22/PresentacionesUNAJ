package com.unaj.tallerunajweatherapp.model

import android.os.Parcelable
import kotlinx.android.parcel.Parcelize

@Parcelize
data class WeatherModel (
    val description: String
): Parcelable