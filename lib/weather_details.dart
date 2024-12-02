import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'weather_data.dart';

class WeatherDetails extends StatelessWidget {
  final WeatherData weather;

  WeatherDetails({required this.weather});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(weather.city),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _getWeatherIcon(weather.weather),
            SizedBox(height: 20),
            Text(
              weather.weather,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              weather.temperature,
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                weather.details,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
            ),
            SizedBox(height: 20),
            Text('Wind Speed: ${weather.windSpeed}'),
            Text('Humidity: ${weather.humidity}'),
          ],
        ),
      ),
    );
  }

  Widget _getWeatherIcon(String weather) {
    switch (weather.toLowerCase()) {
      case 'sunny':
        return Icon(CupertinoIcons.sun_max, size: 100);
      case 'cloudy':
        return Icon(CupertinoIcons.cloud, size: 100);
      case 'rainy':
        return Icon(CupertinoIcons.cloud_rain, size: 100);
      case 'windy':
        return Icon(CupertinoIcons.wind, size: 100);
      case 'partly cloudy':
        return Icon(CupertinoIcons.cloud_sun, size: 100);
      case 'humid':
        return Icon(CupertinoIcons.drop, size: 100);
      case 'hot':
        return Icon(CupertinoIcons.sun_dust, size: 100);
      default:
        return Icon(CupertinoIcons.question_circle, size: 100);
    }
  }
}
