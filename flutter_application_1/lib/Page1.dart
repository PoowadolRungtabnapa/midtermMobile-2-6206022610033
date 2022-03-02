import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  String Name, Surname, Email, Phone, Grade, Graduate;

  Page1(
      {Key? key,
      required this.Name,
      required this.Surname,
      required this.Email,
      required this.Phone,
      required this.Grade,
      required this.Graduate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FITM"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text("Name : $Name"),
            Text("Surname : $Surname"),
            Text("Email : $Email"),
            Text("Phone : $Phone"),
            Text("Grade : $Grade"),
            Text("Graduate : $Graduate")
          ],
        ),
      ),
    );
  }
}
