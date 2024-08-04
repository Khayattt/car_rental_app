import 'package:car_rental_app/views/ColorSchema.dart';
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

  final List<Map<String, String>> horizontalImagesWithDescriptions = [
    {
      'url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSRUQ-Ai108HSyNk73z2WHKyE9qux5f4ssFh3NPOHiSvryLhOZZR5wEevkWeohzRlKWak&usqp=CAU',
      'description': 'Description 1',
    },
    {
      'url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRog1SV-5VYdPA_725l49a7qySuraClytvwcf8ZC-Uw5qBZXlYyKnmclELmaLYkEikRWM0&usqp=CAU',
      'description': 'Description 2'
    },
    {
      'url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRxKKlaKkkSs1ZYnnWTIBftWBtlbqAJpgE8Q&s',
      'description': 'Description 3'
    },
    {
      'url': 'https://ik.imagekit.io/dwtrkflc4/1_NtAdH0c29.png?updatedAt=1686577675728',
      'description': 'Description 4'
    },
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
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('Home'),
      ),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: SingleChildScrollView(
        child: Column(
          
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Padding(
                 padding: const EdgeInsets.only(left:8.0, top: 8),
                 child: Container(
                   decoration: BoxDecoration(
                     border: Border.all(color: AppColors.darkTertiary),
                     borderRadius: BorderRadius.circular(8), 
                     color: AppColors.darkPrimary, 
                     
                   ),
                   width: 300,
                   height: 50,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                     child: DropdownButtonHideUnderline( 
                       child: DropdownButton<String>(
                         style: TextStyle(
                           color: AppColors.lightTertiary,
                           fontWeight: FontWeight.bold,
                           fontSize: 18, 
                         ),
                         items: <String>['Beirut', 'Tripoli', 'Sidon', 'Tyre', 'Byblos']
                             .map((String value) {
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
                         hint: Text(
                           'Select a location',
                           style: TextStyle(
                             fontSize: 20,
                             color: AppColors.lightTertiary.withOpacity(0.7), // Slightly lighter hint color
                           ),
                         ),
                         value: _selectedLocation,
                         dropdownColor: AppColors.darkPrimary, // Background color for the dropdown
                         icon: Icon(Icons.arrow_drop_down, color: AppColors.lightTertiary), // Custom dropdown icon
                       ),
                     ),
                   ),
                 ),
               ),


                IconButton(onPressed: () {}, icon: Icon(Icons.search,  color: AppColors.darkTertiary,)),
                IconButton(onPressed: () {}, icon: Icon(Icons.add_alert, color: AppColors.darkTertiary, )),
              ],
            ),
            SizedBox(height: 20,),
            
            buildCarouselSlider(urlImage),
            SizedBox(height: 20,),
            buildIndicator(activeIndex, urlImage.length),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top vehicle',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.darkTertiary, ),
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
            SizedBox(height: 20,),
           
            buildHorizontalImageScroll(horizontalImagesWithDescriptions,),
            SizedBox(height: 20,),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildCarouselSlider(List<String> images) {
    return CarouselSlider.builder(
      itemCount: images.length,
      itemBuilder: (context, index, realIndex) {
        final imageUrl = images[index];
        return buildImage(imageUrl, index);
      },
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) => setState(() => activeIndex = index),
        autoPlayAnimationDuration: Duration(seconds: 1), )
    );
  }

  Widget buildHorizontalImageScroll(List<Map<String, String>> images) {
    return Container(
      height: 200, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          final imageUrl = images[index]['url']!;
          final description = images[index]['description']!;
          return Container(
            width: 150, 
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: Column(
              children: [
                Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  height: 120, 
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: AppColors.darkTertiary,),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
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

  Widget buildIndicator(int activeIndex, int count) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: count,
    );
  }

  Widget buildBottomNavigationBar() {
    return Container(
      color: Colors.white,
      child: GNav(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        color: Colors.black,
        activeColor: Colors.black,
        tabBackgroundColor: Theme.of(context).colorScheme.primary,
        gap: 8,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
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
    );
  }
}
