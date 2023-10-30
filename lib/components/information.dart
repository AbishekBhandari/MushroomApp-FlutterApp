import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
 final String name;



  const StudentCard({Key? key,  required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        ClipRRect(borderRadius:BorderRadius.circular(100),child: Image(image: AssetImage('assets/images/${name}.jpg'),width: 150.0,height: 150.0,)),
        SizedBox(height: 10.0,),
        Text('${name}'),
        ],
    );;
  }
}


