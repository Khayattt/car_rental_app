import 'package:car_rental_app/views/ColorSchema.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'ColorSchema.dart';
import 'package:car_rental_app/modelViews/Cars_MV.dart';
import 'package:car_rental_app/Widgets/PrimaryButton.dart';
import 'package:car_rental_app/FirestoreService.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({super.key});

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

var carData = {'make': 'Toyota', 'model': 'Corolla', 'year': 2020};





class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Text(
                'This is a new page',
                style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
              ),
            ),
            Center(
              child: PrimaryButton(
                text: 'Click Me',
                onPressed: () {
          

                  fetchCarsData();
                },
                color: Colors.green,
                borderRadius: 12.0,
                padding: 20.0,
                textStyle: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
