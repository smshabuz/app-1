import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class miting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("World Key"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(0),child: TextField(),)
        ],
      ),
    );

  }

}