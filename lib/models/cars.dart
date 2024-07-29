import 'package:flutter/material.dart';

class Car {
  final String id;
  final String brand;
  final int model;
  final String color;
  final int carPlate;
  final String imageUrls;
  final int rentPrice;
  final int vinNumber;
  final String available;
  

  Car(this.vinNumber, this.available, {required this.id, required this.brand, required this.model, required this.color, required this.carPlate,
  required this.imageUrls, required this.rentPrice,});
  
}
