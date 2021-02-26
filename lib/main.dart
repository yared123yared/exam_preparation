
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'layoutAndState/FavoriteWidget.dart';
import 'layoutAndState/RouteArguments.dart';
import 'layoutAndState/secondRoute.dart';

void main(){
  runApp(
      MaterialApp(
        initialRoute: LayoutTest.routeName,
        onGenerateRoute: (settings){
          switch(settings.name){
            case LayoutTest.routeName:
              return MaterialPageRoute(builder: (ctx)=>LayoutTest());

            case SecondRoute.routeName:
              final RouteArguments args=settings.arguments;
              return MaterialPageRoute(builder: (ctx)=>SecondRoute(title: args.title,message: args.message,));

          }
        },
  ));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("Final Exam Preparation")
    )
    );
  }
}