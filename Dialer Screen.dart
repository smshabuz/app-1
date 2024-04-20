import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dialer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        elevation: 100,
        child: Icon(Icons.dialpad),
        onPressed: (){}
    );
  }

  }