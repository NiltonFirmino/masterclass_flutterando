import 'dart:html';

import 'package:connectivity_plus/connectivity_plus.dart';

class CheckInternetService {
  Future<bool> isConnected() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    else{
      return false;
    }
  }
}
