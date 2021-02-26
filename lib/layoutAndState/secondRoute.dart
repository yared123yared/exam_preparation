import 'package:exam_preparation/layoutAndState/RouteArguments.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  static const routeName='/second';
   String title;
  final String message;
  SecondRoute({this.title, this.message});

  @override
  Widget build(BuildContext context) {
    final RouteArguments args=ModalRoute.of(context).settings.arguments;
    this.title=args.title;
    return Scaffold(
      appBar: AppBar(
        title:Text("${this.title}")
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("${this.message }"),
          onPressed:(){
            Navigator.pop(context);
          }
        ),
      ),
    );
  }
}
