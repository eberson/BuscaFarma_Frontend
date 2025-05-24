import 'package:flutter/foundation.dart';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool get loading => showSplashImage;

  bool showSplashImage = true;
  String? _redirectLocation;

  bool notifyOnAuthChange = true;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void stopShowingSplashImage() {
    showSplashImage = false;
    print("will notify listeners");
    notifyListeners();
  }
}