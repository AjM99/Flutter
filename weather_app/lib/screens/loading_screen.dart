import 'package:flutter/material.dart';
import 'package:weather_app/services/location.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }
  void getLocationData() async{
    // Response is  a class/ function and not a user defined variable
    Response myResponse= await get('api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}')
    print(myResponse.body);
    print(myResponse.statusCode)
  }

  @override
  Widget build(BuildContext context) {
    getLocationData();
    return Scaffold();
  }
}
