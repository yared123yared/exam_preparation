import 'package:flutter/material.dart';

class ToggleFavorite extends StatefulWidget{
  final bool isFavorite;
  final Function onChanged;

  ToggleFavorite({this.isFavorite=false,this.onChanged});

  @override
  _ToggleFavoriteState createState() => _ToggleFavoriteState();
}

class _ToggleFavoriteState extends State<ToggleFavorite> {
  Color color;

  @override
  Widget build(BuildContext context){
    return Row(
      children:[
        Text("41"),
        IconButton(icon:this.widget.isFavorite? Icon(Icons.star,color: this.color,) : Icon(Icons.star_border,color: this.color,), onPressed:_handlePress)
      ]
    );
  }

  _handlePress(){
    widget.onChanged(!this.widget.isFavorite);
    print(this.widget.isFavorite.toString());
    this._changeColor(this.widget.isFavorite);
  }

  Color _changeColor(bool favTrue){
    Color color=favTrue ? Colors.green : Colors.red;
   setState((){
     this.color=color;
   });
  }
}