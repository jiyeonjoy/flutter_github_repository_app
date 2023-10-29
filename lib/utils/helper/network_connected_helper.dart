import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkConnectedHelper {
  static Future<bool> isNetworkAvailable() async {
    bool isConnected = false;
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      isConnected = true;
    }

    return isConnected;
  }
}
