// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Screens/Categorymeals_screen.dart';

class Catwid extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  Catwid(this.title, this.color, this.id);

  void onSelectcategory(BuildContext context) {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (_) {
    //       return Categorymeals(title, id);
    //     },
    //   ),
    // );

    Navigator.of(context)
        .pushNamed('/Category-meals', arguments: {"id": id, "title": title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelectcategory(context),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
          padding: const EdgeInsets.all(11),
          child: Text(
            title,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.withOpacity(
                0.7,
              ),
              color,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(5),
          )),
    );
  }
}
