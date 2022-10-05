import 'package:flutter/material.dart';
import 'package:lab3/person.dart';
class PersonCard extends StatelessWidget {
  final Person person;
  const PersonCard(this.person, {Key? key}) : super(key: key);

  _showDaialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('${person.name} Details'),
          content: Text(person.toString()),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close),
            ),
          ],
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showDaialog(context);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          color: Colors.black12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    children:  [
                       const Text('Name: ',style: TextStyle(fontSize: 25,color: Colors.blue),),
                       Text(person.name,style: const TextStyle(fontSize: 25,color: Colors.black),)
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const Text('Id: ',style: TextStyle(fontSize: 25,color: Colors.blue),),
                      Text(person.id,style: const TextStyle(fontSize: 25,color: Colors.black),)
                    ],
                  ),
                ],
              ),
              Image.asset('assets/images/person.png',width: 80,height: 80,),
            ],
          ),
        ),
      ),
    );
  }
}