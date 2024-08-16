import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text('Search'),
      ),
      body: Center(
        child: Text('Search Page', style: TextStyle(fontSize: 24)),
      )
      ,
       backgroundColor: Colors.transparent,
       
    );
  }
}