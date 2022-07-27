import "package:flutter/material.dart";
import 'package:shop_me/Screens/Favoritescreen.dart';
import 'package:shop_me/Screens/categories_screen.dart';

class TopTab extends StatefulWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  State<TopTab> createState() => _TopTabState();
}

class _TopTabState extends State<TopTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        // initialIndex: 1,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              title: Text('Meals'),
              bottom: TabBar(
                  //indicatorPadding: Padding :padding: tabs: [11],,,

                  tabs: [
                    Tab(icon: Icon(Icons.category), text: 'Cat'),
                    Tab(icon: Icon(Icons.favorite), text: 'Fav'),
                  ])),
          body: TabBarView(children: [CategoriesScreen(), Favorite()]),
        ));
  }
}
