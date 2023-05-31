import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  final Map<String,dynamic>data;
  const InfoPage( {super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Info Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 25),
        child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(data["id"].toString(),style: const TextStyle(fontSize: 30)),
              Text(data["name"].toString(),style: const TextStyle(fontSize: 30)),
              Text(data["username"].toString(),style: const TextStyle(fontSize: 30)),
              Text(data["address"]["street"].toString(),style: const TextStyle(fontSize: 30)),
              Text(data["address"]["suite"].toString(),style: const TextStyle(fontSize: 30)),
              Text(data["address"]["city"].toString(),style: const TextStyle(fontSize: 30)),
              Text(data["address"]["zipcode"].toString(),style: const TextStyle(fontSize: 30)),
              Text(data["address"]["geo"]["lat"].toString(),style: const TextStyle(fontSize: 30)),
              Text(data["address"]["geo"]["lng"].toString(),style: const TextStyle(fontSize: 30)),

            ]
        ),
      )
    );
  }
}
