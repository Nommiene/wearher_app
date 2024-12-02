// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'weather_data.dart';
import 'weather_details.dart';

class WeatherHome extends StatefulWidget {
  @override
  _WeatherHomeState createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {
  TextEditingController _searchController = TextEditingController();
  List<WeatherData> _filteredWeatherList = weatherList;

  void _filterWeatherList(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredWeatherList = weatherList;
      } else {
        _filteredWeatherList = weatherList
            .where((weather) =>
                weather.city.toLowerCase().contains(query.toLowerCase()) ||
                weather.country.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: WeatherSearchDelegate(),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: _filterWeatherList,
              decoration: InputDecoration(
                labelText: 'Search City or Country',
                border: OutlineInputBorder(),
                prefixIcon: Icon(CupertinoIcons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredWeatherList.length,
              itemBuilder: (context, index) {
                final weather = _filteredWeatherList[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: _getWeatherIcon(weather.weather),
                    title: Text('${weather.city}, ${weather.country}'),
                    subtitle: Text('${weather.weather}, ${weather.temperature}'),
                    trailing: Icon(CupertinoIcons.chevron_right),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WeatherDetails(weather: weather),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _getWeatherIcon(String weather) {
    switch (weather.toLowerCase()) {
      case 'sunny':
        return Icon(CupertinoIcons.sun_max, size: 50);
      case 'cloudy':
        return Icon(CupertinoIcons.cloud, size: 50);
      case 'rainy':
        return Icon(CupertinoIcons.cloud_rain, size: 50);
      case 'windy':
        return Icon(CupertinoIcons.wind, size: 50);
      case 'partly cloudy':
        return Icon(CupertinoIcons.cloud_sun, size: 50);
      case 'humid':
        return Icon(CupertinoIcons.drop, size: 50);
      case 'hot':
        return Icon(CupertinoIcons.sun_dust, size: 50);
      default:
        return Icon(CupertinoIcons.question_circle, size: 50);
    }
  }
}

class WeatherSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(CupertinoIcons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(CupertinoIcons.arrow_left),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = weatherList
        .where((weather) =>
            weather.city.toLowerCase().contains(query.toLowerCase()) ||
            weather.country.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final weather = results[index];
        return ListTile(
          leading: _getWeatherIcon(weather.weather),
          title: Text('${weather.city}, ${weather.country}'),
          subtitle: Text('${weather.weather}, ${weather.temperature}'),
          onTap: () {
            close(context, null);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WeatherDetails(weather: weather),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }

  Widget _getWeatherIcon(String weather) {
    switch (weather.toLowerCase()) {
      case 'sunny':
        return Icon(CupertinoIcons.sun_max, size: 50);
      case 'cloudy':
        return Icon(CupertinoIcons.cloud, size: 50);
      case 'rainy':
        return Icon(CupertinoIcons.cloud_rain, size: 50);
      case 'windy':
        return Icon(CupertinoIcons.wind, size: 50);
      case 'partly cloudy':
        return Icon(CupertinoIcons.cloud_sun, size: 50);
      case 'humid':
        return Icon(CupertinoIcons.drop, size: 50);
      case 'hot':
        return Icon(CupertinoIcons.sun_dust, size: 50);
      default:
        return Icon(CupertinoIcons.question_circle, size: 50);
    }
  }
}
