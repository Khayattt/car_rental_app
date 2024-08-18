import 'package:flutter/material.dart';

class Categoriesscreen extends StatefulWidget {
  const Categoriesscreen({super.key});

  @override
  State<Categoriesscreen> createState() => _CategoriesscreenState();
}

class _CategoriesscreenState extends State<Categoriesscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1 / 1,
          ),
          itemCount: 10, 
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.blueAccent,
              child: Text(
                "Item $index",
                style: TextStyle(color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }
}
