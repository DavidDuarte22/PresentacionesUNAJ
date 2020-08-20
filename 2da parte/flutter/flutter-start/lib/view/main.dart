import 'package:TallerUNAJ2/model/WeatherModel.dart';
import 'package:TallerUNAJ2/model/temp_model.dart';
import 'package:TallerUNAJ2/view/weather_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Center(
        child: Column(
          children: <Widget>[
            TitlePage(),
            InputTextFieldPage(),
            SearchButton()
          ],
        ),
      )
    );
  }
}


class TitlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 50, 0, 40),
      child: Text(
          "Buscador de Clima",
          style: TextStyle(
            fontSize: 30
          ),
      ),
    );
  }
}

class InputTextFieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Ingrese nombre de la ciudad"
          )
        )
    );
  }
}

class SearchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: RaisedButton(
        padding: EdgeInsets.fromLTRB(120, 10, 110, 10),
        child: Text(
            "BUSCAR",
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.grey,
        onPressed: () {
          final date = DateTime.fromMicrosecondsSinceEpoch(159145769686000);
          final cityWeather = WeatherModel(
            "Buenos Aires, CABA", date,
            TempModel(281.82, 280.15, 283.15)
          );
          navigateToCityWeather(context, cityWeather);
        },
      ),
    );
  }

  navigateToCityWeather(BuildContext context, WeatherModel cityWeather) {
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>  WeatherPage(cityWeather)
        )
    );
  }

}