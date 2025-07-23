import 'package:geolocator/geolocator.dart';

class Location{
  late double latitude;
  late double longitude;

  final LocationSettings locationSettings = LocationSettings(
    accuracy: LocationAccuracy.low,
    distanceFilter: 100,
  );

  Future<void> getCurrentLocation() async{
    try {
      Position position = await Geolocator.getCurrentPosition(locationSettings: locationSettings);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e){
      print(e);
    }
  }

  Future<void> getPermission() async{
    LocationPermission permission = await Geolocator.requestPermission();
  }
}

