import 'package:auvnet/features/home/widgets/home_viewbody.dart';
import 'package:flutter/material.dart';
import 'package:auvnet/constants.dart'; // Make sure to import your constants

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;

 
  final List<Widget> _screens = [
    HomeViewBody(),
    Center(child: Text('Categories Screen')), 
    Center(child: Text('Deliver Screen')), 
    Center(child: Text('Cart Screen')),     
    Center(child: Text('Profile Screen')),  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,    
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
            label: 'Deliver',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}