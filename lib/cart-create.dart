import 'package:flutter/material.dart';

class SetCard extends StatelessWidget {
  SetCard(
      {required this.titleUp,
      required this.titleDown,
      required this.leadingIcon,
      required this.trailingIcon});
  final String titleUp;
  final String titleDown;
  final Icon leadingIcon;
  final Icon trailingIcon;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      color: Colors.blueGrey[50],
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: leadingIcon,
        title: Text(
          titleUp,
          style: TextStyle(
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              color: Colors.blueGrey),
        ),
        subtitle: Text(
          titleDown,
          style: TextStyle(
              fontFamily: 'Pacifico',
              letterSpacing: 3.0,
              color: Colors.teal[500],
              fontSize: 12.0),
        ),
        trailing: trailingIcon,
        dense: true,
      ),
    );
  }
}
