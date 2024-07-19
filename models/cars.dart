import 'package:flutter/material.dart';

class Car {
  final String id;
  final String brand;
  final int model;
  final String color;
  final int carPlate;
  final String image_urls;
  final int rentPrice;
  final int vinnumber;
  final String available;
  

  Car(this.vinnumber, this.available, {required this.id, required this.brand, required this.model, required this.color, required this.carPlate,
  required this.image_urls, required this.rentPrice,});
  
}
