import 'package:flutter/material.dart';
import 'package:lab3/person.dart';
import 'person_card.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Info'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            PersonCard(Person('Ahmad','19/1234','Hebron','54654654')),
            PersonCard(Person('ali ','20/1234','Hebron','54654654')),
            PersonCard(Person('Muna','21/1234','Hebron','54654654')),
          ],
        ) ,
        //
        )
      );
  }
}



