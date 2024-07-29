import 'package:car_rental_app/FirestoreService.dart';

void addCar(carData){
  FirestoreService().addItem(carData, 'Cars');
}