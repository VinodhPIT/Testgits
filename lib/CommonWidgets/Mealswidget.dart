import "package:flutter/material.dart";
import 'package:shop_me/Models/mealsModel.dart';

class Mealswidget extends StatelessWidget {
  final String title;
  final String imageurl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  Mealswidget(
      {required this.title,
      required this.imageurl,
      required this.duration,
      required this.complexity,
      required this.affordability});

  void showdetail(context) {
    Navigator.of(context).pushNamed('/Meals-detail');
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return InkWell(
      onTap: () => showdetail(context),
      child: Container(
        // width: 1000,
        // height: 111,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Container(
            width: 11,
            child: Column(children: [
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Image.network(
                        imageurl,
                        height: 200,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                  Positioned(
                    bottom: 20,
                    right: 0,
                    width: 300,
                    child: Container(
                      color: Colors.black54,
                      padding:
                          EdgeInsets.symmetric(vertical: 7, horizontal: 11),
                      child: Text(title,
                          style: TextStyle(fontSize: 16, color: Colors.white),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.schedule),
                          SizedBox(
                            width: 6,
                          ),
                          Text('$duration min')
                        ],
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Row(
                        children: [
                          Icon(Icons.schedule),
                          SizedBox(
                            width: 6,
                          ),
                          Text('$duration min',
                              style: themeData.textTheme.subtitle2)
                        ],
                      )
                    ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
