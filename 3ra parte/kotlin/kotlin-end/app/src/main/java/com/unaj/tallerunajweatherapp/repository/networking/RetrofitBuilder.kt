package com.unaj.tallerunajweatherapp.repository.networking

import com.google.gson.GsonBuilder
import okhttp3.OkHttpClient
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory


// todas las funciones necesarias para crear nuestro cliente Retrofit y API Builder

// Retrofit usa HttpClient por debajo,
// podemos agregar nuestro propio builder para agregar configuraciones customs
fun builClient(): OkHttpClient =
    OkHttpClient
        .Builder()
        .build()

// retrofit client factory
fun buildRetrofit(): Retrofit {
    return Retrofit.Builder()
        .client(builClient())
        .baseUrl("http://api.openweathermap.org")
        .addConverterFactory(GsonConverterFactory.create(GsonBuilder().create()))
        .build()
}

// creamos un API Service con la interfaz.
fun buildApiService(): ApiService =
    buildRetrofit().create(ApiService::class.java)
