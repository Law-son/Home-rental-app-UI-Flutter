import 'package:flutter/material.dart';

class Category with ChangeNotifier {
  bool _homeSelected = true;
  bool _apartmentSelected = false;
  bool _hotelSelected = false;
  bool _villaSelected = false;
  bool _estateSelected = false;

  bool get homeSelected => _homeSelected;
  bool get apartmentSelected => _apartmentSelected;
  bool get hotelSelected => _hotelSelected;
  bool get villaSelected => _villaSelected;
  bool get estateSelected => _estateSelected;

  void selectHome() {
    _homeSelected = true;
    _apartmentSelected = false;
    _hotelSelected = false;
    _villaSelected = false;
    _estateSelected = false;
    notifyListeners();
  }

  void selectApartment() {
    _homeSelected = false;
    _apartmentSelected = true;
    _hotelSelected = false;
    _villaSelected = false;
    _estateSelected = false;
    notifyListeners();
  }

  void selectHotel() {
    _homeSelected = false;
    _apartmentSelected = false;
    _hotelSelected = true;
    _villaSelected = false;
    _estateSelected = false;
    notifyListeners();
  }

  void selectVilla() {
    _homeSelected = false;
    _apartmentSelected = false;
    _hotelSelected = false;
    _villaSelected = true;
    _estateSelected = false;
    notifyListeners();
  }

  void selectEstate() {
    _homeSelected = false;
    _apartmentSelected = false;
    _hotelSelected = false;
    _villaSelected = false;
    _estateSelected = true;
    notifyListeners();
  }
}


