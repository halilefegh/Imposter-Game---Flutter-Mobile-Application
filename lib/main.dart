import 'package:flutter/material.dart';
import 'package:imposter/home_screen.dart';




void main(){
  runApp(Opening());
}
class Opening extends StatelessWidget{
  const Opening({super.key}); 
  @override
  Widget build(BuildContext c){
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "myfont"
      ),
      home: HomeScreen(),
      
    ); 
  } 
}
