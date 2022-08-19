import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weatherapp/weatherdetail.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.place_rounded),
              Text('Tarkwa', style: TextStyle(fontSize: 16)),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Monday, Aug 16 2022',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '23',
                      style: TextStyle(fontSize: 60),
                    ),
                    BoxedIcon(
                      WeatherIcons.day_cloudy,
                      size: 60,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('FeelReal'),
                    Text('Overcast'),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 250,
                child: Column(
                  children: [
                    WeatherDetail(label: 'Humidity', value: '25%'),
                    SizedBox(height: 10),
                    WeatherDetail(label: 'UV Index', value: ''),
                    SizedBox(height: 10),
                    WeatherDetail(label: 'Wind Speed', value: '5.00 mph'),
                    SizedBox(height: 10),
                    WeatherDetail(label: 'Rain Probability', value: '2%'),
                    SizedBox(height: 10),
                    WeatherDetail(label: 'Pressure', value: '1023.6 Pa'),
                    SizedBox(height: 10)
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
