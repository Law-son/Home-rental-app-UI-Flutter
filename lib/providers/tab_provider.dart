import 'package:flutter/material.dart';

class MyTab with ChangeNotifier {
  bool _homeSelected = true;
  bool _profileSelected = false;
  bool _nearbySelected = false;
  bool _bookmarkSelected = false;
  bool _notificationSelected = false;
  bool _messageSelected = false;
  bool _settingsSelected = false;
  bool _helpSelected = false;

  bool get homeSelected => _homeSelected;
  bool get profileSelected => _profileSelected;
  bool get nearbySelected => _nearbySelected;
  bool get bookmarkSelected => _bookmarkSelected;
  bool get notificationSelected => _notificationSelected;
  bool get messageSelected => _messageSelected;
  bool get settingsSelected => _settingsSelected;
  bool get helpSelected => _helpSelected;

  void selectHome() {
    _homeSelected = true;
    _profileSelected = false;
    _nearbySelected = false;
    _bookmarkSelected = false;
    _notificationSelected = false;
    _messageSelected = false;
    _settingsSelected = false;
    _helpSelected = false;
    notifyListeners();
  }

  void selectProfile(){
    _homeSelected = false;
    _profileSelected = true;
    _nearbySelected = false;
    _bookmarkSelected = false;
    _notificationSelected = false;
    _messageSelected = false;
    _settingsSelected = false;
    _helpSelected = false;
    notifyListeners();
  }

  void selectNearby(){
    _homeSelected = false;
    _profileSelected = false;
    _nearbySelected = true;
    _bookmarkSelected = false;
    _notificationSelected = false;
    _messageSelected = false;
    _settingsSelected = false;
    _helpSelected = false;
    notifyListeners();
  }

  void selectBookmark(){
    _homeSelected = false;
    _profileSelected = false;
    _nearbySelected = false;
    _bookmarkSelected = true;
    _notificationSelected = false;
    _messageSelected = false;
    _settingsSelected = false;
    _helpSelected = false;
    notifyListeners();
  }

  void selectNotification(){
    _homeSelected = false;
    _profileSelected = false;
    _nearbySelected = false;
    _bookmarkSelected = false;
    _notificationSelected = true;
    _messageSelected = false;
    _settingsSelected = false;
    _helpSelected = false;
    notifyListeners();
  }

  void selectMessage(){
    _homeSelected = false;
    _profileSelected = false;
    _nearbySelected = false;
    _bookmarkSelected = false;
    _notificationSelected = false;
    _messageSelected = true;
    _settingsSelected = false;
    _helpSelected = false;
    notifyListeners();
  }

  void selectSettings(){
    _homeSelected = false;
    _profileSelected = false;
    _nearbySelected = false;
    _bookmarkSelected = false;
    _notificationSelected = false;
    _messageSelected = false;
    _settingsSelected = true;
    _helpSelected = false;
    notifyListeners();
  }

  void selectHelp(){
    _homeSelected = false;
    _profileSelected = false;
    _nearbySelected = false;
    _bookmarkSelected = false;
    _notificationSelected = false;
    _messageSelected = false;
    _settingsSelected = false;
    _helpSelected = true;
    notifyListeners();
  }

}
