import 'package:flutter/material.dart';
import 'package:masimu_app/src/view/pages/widgets/cart.dart';
import 'package:masimu_app/src/view/pages/widgets/home.dart';
import 'package:masimu_app/src/view/pages/widgets/profile.dart';
import 'package:masimu_app/src/view/pages/widgets/favourites.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      */
      body: const <Widget>[
        HomeWidget(),
        CartWidget(),
        FavouritesWidget(),
        ProfileWidget()
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home, color: Colors.white),
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.shopping_cart_sharp, color: Colors.white),
            icon: Icon(Icons.shopping_cart_sharp),
            label: "Carinho",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.favorite, color: Colors.white),
            icon: Icon(Icons.favorite),
            label: "Favoritos",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person, color: Colors.white),
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
        ],
        indicatorColor: const Color(0xFF39B54A),
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
    );
  }
}
