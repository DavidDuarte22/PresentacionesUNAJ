import 'package:TallerUNAJ2/model/WeatherModel.dart';
import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
  final WeatherModel cityWeather;

  WeatherPage(this.cityWeather);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            WeatherTitlePage(cityWeather.cityName,
              25,
              padding: EdgeInsets.fromLTRB(0, 60, 0, 10)
            ),
            WeatherTitlePage(timestampToString(cityWeather.timestamp), 18),
            MainTempPage(cityWeather.temperature.temp),
            Text("Temperatura"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    MinMaxTempPage(cityWeather.temperature.tempMin),
                    Text("Temperatura"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    MinMaxTempPage(cityWeather.temperature.tempMax),
                    Text("Temperatura"),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }


  String timestampToString(DateTime timestamp) {
    return timestamp.toString();
  }
}

class WeatherTitlePage extends StatelessWidget {
  final String title;
  final double fontSize;
  final EdgeInsets padding;

  WeatherTitlePage(this.title, this.fontSize, {this.padding});

  @override
  Widget build(BuildContext context) {
    return Container (
      padding: this.padding,
      child: Text(this.title,
      style: TextStyle(
          fontSize: this.fontSize
      ),),
    );
  }
}

class WeatherSubtitlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container (
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Text("Domingo 17 de Agosto"),
    );
  }
}

class MainTempPage extends StatelessWidget {
  final double temp;

  MainTempPage(this.temp);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 80, 0, 5),
      child: Text('$temp',
      style: TextStyle(
        fontSize: 30
      ),
      ),
    );
  }
}

class MinMaxTempPage extends StatelessWidget {
  final double temp;

  MinMaxTempPage(this.temp);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 40, 0, 5),
      child: Text('$temp',
        style: TextStyle(
            fontSize: 24
        ),
      ),
    );
  }
}