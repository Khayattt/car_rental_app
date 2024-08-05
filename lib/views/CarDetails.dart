import 'package:car_rental_app/views/ColorSchema.dart';
import 'package:flutter/material.dart';
import 'ColorSchema.dart';
import 'package:car_rental_app/modelViews/Cars_MV.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({super.key});

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor:  Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        
        title: Text('New Page'),
        
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Text('This is a new page',style: TextStyle(color: Theme.of(context).colorScheme.tertiary),),
            ),
            Center(
               child: ElevatedButton(
            onPressed: () {
              // Example car data
              var carData = {
                'make': 'Toyota',
                'model': 'Corolla',
                'year': 2020
              };
              addCar(carData); // Call the addCar function
            },
            child: Text('Add Car'),
                ),
            )
          ],
        ),
      ),
    );
  }
}

