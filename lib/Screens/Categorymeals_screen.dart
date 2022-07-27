import 'package:flutter/material.dart';
import 'package:shop_me/CommonWidgets/Mealswidget.dart';
import '../Models/dummy.dart';

class Categorymeals extends StatelessWidget {
  // final String title;
  // final String id;

  // const Categorymeals(this.title, this.id);

  @override
  Widget build(BuildContext context) {
    final routes =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final catTitle = routes['title'];
    final catId = routes['id'];

    final mealData =
        DUMMY_MEALS.where((e) => e.categories.contains(catId)).toList();

    return Scaffold(
      appBar: AppBar(title: Text(catTitle.toString())),
      body:
          //   padding: const EdgeInsets.all(11),
          //   children:
          //       DUMMY_MEALS.where((e) => e.categories.contains(catIdd)).toList(),
          //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //       maxCrossAxisExtent: 200,
          //       childAspectRatio: 3 / 4,
          //       crossAxisSpacing: 10,
          //       mainAxisSpacing: 10),
          // )),

          (ListView.builder(
        itemBuilder: (ctx, index) {
          return Mealswidget(
              title: mealData[index].title,
              imageurl: mealData[index].imageUrl,
              duration: mealData[index].duration,
              complexity: mealData[index].complexity,
              affordability: mealData[index].affordability);
        },
        itemCount: mealData.length,
      )),
    );
  }
}
