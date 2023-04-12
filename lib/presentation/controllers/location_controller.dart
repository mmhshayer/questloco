import 'package:get/get.dart';
import 'package:location/location.dart';

class LocationController extends GetxController {
  final Rx<LocationData> currentLocation = LocationData.fromMap({}).obs;

  LocationData get locationData => currentLocation.value;

  @override
  void onInit() {
    super.onInit();
    _initializeLocation();
  }

  Future<void> _initializeLocation() async {
    final location = Location();

    bool serviceEnabled;
    PermissionStatus permissionStatus;

    // Check if location services are enabled and request permission if needed
    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionStatus = await location.hasPermission();
    if (permissionStatus == PermissionStatus.denied) {
      permissionStatus = await location.requestPermission();
      if (permissionStatus != PermissionStatus.granted) {
        return;
      }
    }

    // Listen for location updates
    location.onLocationChanged.listen((LocationData locationData) {
      currentLocation.value = locationData;
    });
  }
}
