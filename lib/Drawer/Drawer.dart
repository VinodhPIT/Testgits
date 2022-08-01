import 'package:flutter/material.dart';

class Drawermain extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: tapHandler(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          color: Colors.brown,
          alignment: Alignment.centerLeft,
          height: 112,
          width: double.infinity,
          padding: EdgeInsets.all(11),
          child: Text(
            "Hai Drawer",
            style: TextStyle(fontSize: 23),
          ),
        ),
        SizedBox(
          height: 11,
        ),
        // buildListTile('Meal', Icons.restaurant, () {
        //   Navigator.of(context).pushNamed('/');
        // }),
        // buildListTile('Filtermeal', Icons.restaurant, () {
        //   Navigator.of(context).pushNamed('/Filtermeal');
        // }),
        ListTile(
            leading: Icon(Icons.restaurant),
            title: Text('filter'),
            onTap: () {
              Navigator.of(context).pushNamed('/Filtermeal');
            }),

        ListTile(
            leading: Icon(Icons.restaurant),
            title: Text('filscscscter'),
            onTap: () {
              Navigator.of(context).pushNamed('/');
            })
      ],
    ));
  }
}
