import 'package:TallerUNAJ2/bloc/weather_bloc.dart';
import 'package:TallerUNAJ2/model/main_weather_model.dart';
import 'package:TallerUNAJ2/model/temp_model.dart';
import 'package:TallerUNAJ2/view/weather_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      home: BlocProvider(
        create: (context) => WeatherBloc(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return BlocListener<WeatherBloc, WeatherState>(
      listener: (context, state) {
        if (state is NewWeatherState){
          navigateToCityWeather(context, state.weather);
        }
      },

      child: Scaffold(
          appBar: AppBar(),
          body:
          Center(
            child: Column(
              children: <Widget>[
                TitlePage(),
                TextFieldPage(),
              ],
            ),
          )
      )
    );
  }


  navigateToCityWeather(BuildContext context, MainWeatherModel cityWeather) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>  WeatherPage(cityWeather)
    ));
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

class TextFieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final weatherBloc = BlocProvider.of<WeatherBloc>(context);
    final cityWeatherController = TextEditingController();
    FocusScopeNode currentFocus = FocusScope.of(context);

    return Container(
        padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
        child: Column (
          children: <Widget>[
            TextFormField(
                controller: cityWeatherController,
                decoration: InputDecoration(
                    hintText: "Ingrese nombre de la ciudad"
                ),
            ),
            SizedBox(height: 10),
            RaisedButton(
              padding: EdgeInsets.fromLTRB(120, 10, 110, 10),
              child: Text(
                "BUSCAR",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.grey,
              onPressed: () {
                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
                weatherBloc.add(FetchWeatherEvent(cityWeatherController.text));
              },
            )
          ],
        )
    );
  }
}
