import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _selectedLocation;
  int activeIndex = 0;
  final List<String> urlImage = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSRUQ-Ai108HSyNk73z2WHKyE9qux5f4ssFh3NPOHiSvryLhOZZR5wEevkWeohzRlKWak&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRog1SV-5VYdPA_725l49a7qySuraClytvwcf8ZC-Uw5qBZXlYyKnmclELmaLYkEikRWM0&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRxKKlaKkkSs1ZYnnWTIBftWBtlbqAJpgE8Q&s',
    'https://ik.imagekit.io/dwtrkflc4/1_NtAdH0c29.png?updatedAt=1686577675728',
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  items: <String>['Beirut', 'Tripoli', 'Sidon', 'Tyre', 'Byblos'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedLocation = newValue;
                    });
                  },
                  hint: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Select a location'),
                  ),
                  value: _selectedLocation,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: Icon(Icons.add_alert)),
              ],
            ),
            SizedBox(height: 20,),
            CarouselSlider.builder(
              itemCount: urlImage.length,
              itemBuilder: (context, index, realIndex) {
                final imageUrl = urlImage[index];
                return buildImage(imageUrl, index);
              },
              options: CarouselOptions(
                height: 400,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) => setState(() => activeIndex = index),
              ),
            ),
            SizedBox(height: 20,),
            buildIndicator(),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top vehicle',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                     
                      print('See More tapped!');
                    },
                    child: Text(
                      'See More',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromRGBO(243, 226, 33, 1)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white, 
        child: GNav(
          backgroundColor: Colors.white,
          color: Colors.black,
          activeColor: Colors.blue,
          tabBackgroundColor: Colors.blue.withOpacity(0.1),
          gap: 8,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          onTabChange: (index) {
            _onItemTapped(index);
          },
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite_border,
              text: 'Favorites',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      color: Colors.grey,
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: urlImage.length,
  );
}
