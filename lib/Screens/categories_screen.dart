import 'package:flutter/material.dart';
import '../Models/dummy.dart';
import '../CommonWidgets/Categorywidget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(11),
      children:
          DUMMY_CATEGORIES.map((e) => Catwid(e.title, e.color, e.id)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 1200,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),

      ///oh ethiuy8yuy
    );
  }
}
