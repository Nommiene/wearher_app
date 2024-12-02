
class WeatherData {
  final String city;
  final String country;
  final String weather;
  final String temperature;
  final String details;
  final String windSpeed;
  final String humidity;

  WeatherData({
    required this.city,
    required this.country,
    required this.weather,
    required this.temperature,
    required this.details,
    required this.windSpeed,
    required this.humidity,
  });
}

List<WeatherData> weatherList = [
  WeatherData(
    city: 'New York',
    country: 'USA',
    weather: 'sunny',
    temperature: '22°C',
    details: 'Clear skies all day.',
    windSpeed: '10 km/h',
    humidity: '50%',
  ),
  WeatherData(
    city: 'London',
    country: 'UK',
    weather: 'cloudy',
    temperature: '18°C',
    details: 'Overcast with light winds.',
    windSpeed: '12 km/h',
    humidity: '60%',
  ),
  WeatherData(city: 'Mongolia', country: 'Ulaanbaatar', weather: 'Partly cloudy', temperature: '-13°C', details: 'Cloudy', windSpeed: '15 km/h', humidity: '58%'),
  WeatherData(city: 'New York', country: 'USA', weather: 'Sunny', temperature: '22°C', details: 'Clear sky', windSpeed: '5 km/h', humidity: '60%'),
  WeatherData(city: 'Toronto', country: 'Canada', weather: 'Cloudy', temperature: '15°C', details: 'Overcast', windSpeed: '10 km/h', humidity: '70%'),
  WeatherData(city: 'Mexico City', country: 'Mexico', weather: 'Rainy', temperature: '18°C', details: 'Light rain', windSpeed: '8 km/h', humidity: '85%'),
  WeatherData(city: 'Brasilia', country: 'Brazil', weather: 'Windy', temperature: '20°C', details: 'Windy with cloudy skies', windSpeed: '20 km/h', humidity: '65%'),
  WeatherData(city: 'Buenos Aires', country: 'Argentina', weather: 'Thunderstorm', temperature: '28°C', details: 'Thunderstorms with heavy rain', windSpeed: '15 km/h', humidity: '90%'),
  WeatherData(city: 'London', country: 'United Kingdom', weather: 'Cloudy', temperature: '14°C', details: 'Light clouds', windSpeed: '6 km/h', humidity: '72%'),
  WeatherData(city: 'Sydney', country: 'Australia', weather: 'Sunny', temperature: '25°C', details: 'Clear sky', windSpeed: '5 km/h', humidity: '50%'),
  WeatherData(city: 'New Delhi', country: 'India', weather: 'Hot', temperature: '34°C', details: 'Sunny with no clouds', windSpeed: '10 km/h', humidity: '45%'),
  WeatherData(city: 'Beijing', country: 'China', weather: 'Smoggy', temperature: '18°C', details: 'Heavy smog', windSpeed: '3 km/h', humidity: '60%'),
  WeatherData(city: 'Moscow', country: 'Russia', weather: 'Snowy', temperature: '-5°C', details: 'Light snow', windSpeed: '4 km/h', humidity: '80%'),
  WeatherData(city: 'Cape Town', country: 'South Africa', weather: 'Partly cloudy', temperature: '18°C', details: 'Some clouds', windSpeed: '15 km/h', humidity: '70%'),
  WeatherData(city: 'Tokyo', country: 'Japan', weather: 'Rainy', temperature: '22°C', details: 'Heavy rain', windSpeed: '12 km/h', humidity: '85%'),
  WeatherData(city: 'Paris', country: 'France', weather: 'Clear', temperature: '18°C', details: 'Clear skies', windSpeed: '7 km/h', humidity: '65%'),
  WeatherData(city: 'Berlin', country: 'Germany', weather: 'Cloudy', temperature: '16°C', details: 'Overcast', windSpeed: '9 km/h', humidity: '72%'),
  WeatherData(city: 'Cairo', country: 'Egypt', weather: 'Sunny', temperature: '30°C', details: 'Clear sky', windSpeed: '10 km/h', humidity: '50%'),
  WeatherData(city: 'Dubai', country: 'United Arab Emirates', weather: 'Hot', temperature: '40°C', details: 'Clear with no clouds', windSpeed: '15 km/h', humidity: '30%'),
  WeatherData(city: 'Rio de Janeiro', country: 'Brazil', weather: 'Windy', temperature: '28°C', details: 'Windy with sunny intervals', windSpeed: '20 km/h', humidity: '65%'),
  WeatherData(city: 'Buenos Aires', country: 'Argentina', weather: 'Rainy', temperature: '22°C', details: 'Showers', windSpeed: '8 km/h', humidity: '85%'),
  WeatherData(city: 'Johannesburg', country: 'South Africa', weather: 'Thunderstorm', temperature: '22°C', details: 'Thunderstorms', windSpeed: '20 km/h', humidity: '90%'),
  WeatherData(city: 'Los Angeles', country: 'USA', weather: 'Sunny', temperature: '25°C', details: 'Clear skies', windSpeed: '10 km/h', humidity: '60%'),
  WeatherData(city: 'Madrid', country: 'Spain', weather: 'Clear', temperature: '18°C', details: 'Clear sky', windSpeed: '5 km/h', humidity: '55%'),
  WeatherData(city: 'Rome', country: 'Italy', weather: 'Partly cloudy', temperature: '22°C', details: 'Some clouds', windSpeed: '7 km/h', humidity: '60%'),
  
  // Additional countries and cities:
  WeatherData(city: 'Athens', country: 'Greece', weather: 'Sunny', temperature: '29°C', details: 'Clear sky', windSpeed: '8 km/h', humidity: '40%'),
  WeatherData(city: 'Stockholm', country: 'Sweden', weather: 'Cloudy', temperature: '12°C', details: 'Overcast', windSpeed: '15 km/h', humidity: '80%'),
  WeatherData(city: 'Oslo', country: 'Norway', weather: 'Snowy', temperature: '-2°C', details: 'Snow showers', windSpeed: '5 km/h', humidity: '85%'),
  WeatherData(city: 'Helsinki', country: 'Finland', weather: 'Cold', temperature: '-3°C', details: 'Light snow', windSpeed: '4 km/h', humidity: '88%'),
  WeatherData(city: 'Warsaw', country: 'Poland', weather: 'Windy', temperature: '10°C', details: 'Breezy with some clouds', windSpeed: '18 km/h', humidity: '70%'),
  WeatherData(city: 'Prague', country: 'Czech Republic', weather: 'Partly cloudy', temperature: '15°C', details: 'Some clouds', windSpeed: '12 km/h', humidity: '75%'),
  WeatherData(city: 'Vienna', country: 'Austria', weather: 'Clear', temperature: '20°C', details: 'Sunny skies', windSpeed: '8 km/h', humidity: '65%'),
  WeatherData(city: 'Zurich', country: 'Switzerland', weather: 'Rainy', temperature: '11°C', details: 'Light rain showers', windSpeed: '10 km/h', humidity: '90%'),
  WeatherData(city: 'Budapest', country: 'Hungary', weather: 'Cloudy', temperature: '16°C', details: 'Overcast', windSpeed: '9 km/h', humidity: '78%'),
  WeatherData(city: 'Lagos', country: 'Nigeria', weather: 'Hot', temperature: '33°C', details: 'Clear and sunny', windSpeed: '7 km/h', humidity: '60%'),
  WeatherData(city: 'Jakarta', country: 'Indonesia', weather: 'Rainy', temperature: '28°C', details: 'Heavy rain', windSpeed: '15 km/h', humidity: '85%'),
  WeatherData(city: 'Seoul', country: 'South Korea', weather: 'Cloudy', temperature: '18°C', details: 'Overcast skies', windSpeed: '10 km/h', humidity: '70%'),
  WeatherData(city: 'Kuala Lumpur', country: 'Malaysia', weather: 'Thunderstorm', temperature: '30°C', details: 'Thunderstorms with heavy rain', windSpeed: '12 km/h', humidity: '90%'),
  WeatherData(city: 'Bangkok', country: 'Thailand', weather: 'Hot', temperature: '33°C', details: 'Clear with no clouds', windSpeed: '5 km/h', humidity: '70%'),
  WeatherData(city: 'Singapore', country: 'Singapore', weather: 'Sunny', temperature: '31°C', details: 'Clear skies', windSpeed: '8 km/h', humidity: '60%'),
  WeatherData(city: 'Manila', country: 'Philippines', weather: 'Rainy', temperature: '26°C', details: 'Heavy rain showers', windSpeed: '10 km/h', humidity: '80%'),
  WeatherData(city: 'Lima', country: 'Peru', weather: 'Cloudy', temperature: '19°C', details: 'Partly cloudy', windSpeed: '5 km/h', humidity: '70%'),
  WeatherData(city: 'Santiago', country: 'Chile', weather: 'Sunny', temperature: '23°C', details: 'Clear sky', windSpeed: '5 km/h', humidity: '50%'),
  WeatherData(city: 'Caracas', country: 'Venezuela', weather: 'Cloudy', temperature: '27°C', details: 'Some clouds', windSpeed: '6 km/h', humidity: '75%'),
  WeatherData(city: 'San Salvador', country: 'El Salvador', weather: 'Sunny', temperature: '29°C', details: 'Clear sky', windSpeed: '10 km/h', humidity: '55%'),
  WeatherData(city: 'Quito', country: 'Ecuador', weather: 'Cloudy', temperature: '17°C', details: 'Overcast', windSpeed: '8 km/h', humidity: '75%'),
  WeatherData(city: 'Marrakech', country: 'Morocco', weather: 'Sunny', temperature: '28°C', details: 'Clear skies', windSpeed: '6 km/h', humidity: '50%'),
  WeatherData(city: 'Addis Ababa', country: 'Ethiopia', weather: 'Partly cloudy', temperature: '23°C', details: 'Some clouds', windSpeed: '9 km/h', humidity: '65%'),
];


