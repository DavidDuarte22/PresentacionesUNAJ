package com.unaj.tallerunajweatherapp.model

import android.os.Parcelable
import kotlinx.android.parcel.Parcelize

@Parcelize
data class TempModel (
    val temp: Double,
    val tempMin: Double,
    val tempMax: Double
): Parcelable