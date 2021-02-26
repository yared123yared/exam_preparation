import 'package:exam_preparation/layoutAndState/RouteArguments.dart';
import 'package:flutter/material.dart';

import 'FavoriteWidget.dart';
import 'secondRoute.dart';
import 'toggeFavorite.dart';

class LayoutTest extends StatefulWidget{
  static const routeName='/';
  @override
  _LayoutTestState createState() => _LayoutTestState();
}

class _LayoutTestState extends State<LayoutTest> {
    bool isFavorite=false;
    handleToggle(bool fav){
       setState((){
         this.isFavorite =fav;
       });
    }
  Widget getIcon(IconData iconData,String title){
    return Container(
      child: Column(
        children: [
          Icon(iconData,color: Colors.blue,),
          SizedBox(height: 2,),
          Text(title,style: TextStyle(
              color: Colors.blue
          ),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar:AppBar(
          title:Text("LayoutPractice")
      ),
      body: Container(
        decoration: BoxDecoration(

        ),
        height: MediaQuery.of(context).size.height,
        child: Column(
            children:[
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.3,
                child: Image.asset('asset/image/image1.jpg',fit: BoxFit.fill,),
              ),
              Container(
//              height: MediaQuery.of(context).size.height*0.7,
                margin:EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                decoration: BoxDecoration(

                ),
                child: Column(
                  children: [
                    Container(

                        child:Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children:[
                              Column(
                                  children:[
                                    Text("Main Ground Area",style: TextStyle(
                                        fontWeight:FontWeight.bold,
                                        fontSize: 24
                                    ),),
                                    SizedBox(height: 5,),
                                    Text("subtitle will appear here",style: TextStyle(
                                        fontWeight: FontWeight.w100,
                                        fontSize:20
                                    ),),
                                  ]
                              ),
                              ToggleFavorite(isFavorite:this.isFavorite, onChanged: this.handleToggle)
                            ]
                        )

                    ),
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceAround,
                        children: [
                          this.getIcon(Icons.call, "CALL"),
                          this.getIcon(Icons.call, "CALL"),
                          this.getIcon(Icons.call, "CALL")
                        ],
                      ),

                    ),
                    SizedBox(height: 10,),
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                 SizedBox(height: 50,),
                    ElevatedButton(
                      child: Text("Go to the second route"),
                      onPressed:(){
//                       Navigator.push(context,MaterialPageRoute(
//                           builder: (ctx)=>SecondRoute()));
                      Navigator.pushNamed(context,SecondRoute.routeName,arguments:RouteArguments('RouteArguments', "Back"));
                      }
                    ),
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}