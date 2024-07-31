import 'package:car_rental_app/views/ColorSchema.dart';
import 'package:flutter/material.dart';
import 'ColorSchema.dart';

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
        child: Text('This is a new page',style: TextStyle(color: Theme.of(context).colorScheme.tertiary),),
      ),
    );
  }
}