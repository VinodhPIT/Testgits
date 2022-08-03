import "package:flutter/material.dart";
import 'package:shop_me/Drawer/Drawer.dart';
import 'package:shop_me/Screens/Favoritescreen.dart';
import 'package:shop_me/Screens/categories_screen.dart';

class TopTab extends StatefulWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  State<TopTab> createState() => _TopTabState();
}

class _TopTabState extends State<TopTab> {
  final List<Widget> _pages = [
    CategoriesScreen(),
    Favorite(),
  ];
  int _selectedPageIndex = 0;

  void selectpage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
      ),
      drawer: Drawermain(),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectpage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellow,
        //showSelectedLabels: false,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'cat'),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Favorite',
          ),
        ],
      ),
    );
    //  DefaultTabController(///Top  Tap code//
    //     // initialIndex: 1,
    //     length: 2,
    //     child: Scaffold(
    //       appBar: AppBar(
    //           title: Text('Meals'),
    //           bottom: TabBar(
    //               //indicatorPadding: Padding :padding: tabs: [11],,,

    //               tabs: [
    //                 Tab(icon: Icon(Icons.category), text: 'Cat'),
    //                 Tab(icon: Icon(Icons.favorite), text: 'Fav'),
    //               ])),
    //       body: TabBarView(children: [CategoriesScreen(), Favorite()]),
    //     )

    //     );
  }
}
