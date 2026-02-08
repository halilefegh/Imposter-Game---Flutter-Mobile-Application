import 'package:flutter/material.dart';
import 'package:imposter/player_selection_screen.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatefulWidget{

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(shadowColor: Colors.black,backgroundColor: const Color.fromARGB(255, 60, 7, 74),toolbarHeight: 80,title: Text("Imposter Game",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 45,shadows: [Shadow(blurRadius: 8)]),),centerTitle: true,),
      body: HomeButtons(),
      backgroundColor: const Color.fromARGB(255, 76, 1, 89),

    );
  }
}

class HomeButtons extends StatelessWidget{
  const HomeButtons({super.key});
  
    @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: double.infinity,
      
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> PlayerSelectionScreen()));},style: ElevatedButton.styleFrom(elevation:20,shadowColor: Colors.black,minimumSize: Size(250, 100),backgroundColor: const Color.fromARGB(255, 70, 3, 91)) ,child: Text("Play",style: TextStyle(color: Colors.yellow,fontFamily: "myfont",fontWeight: FontWeight.bold,fontSize: 50)),),
            SizedBox(height: 100,),
            ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(elevation:20,shadowColor:Colors.black,backgroundColor: const Color.fromARGB(255, 70, 3, 91),minimumSize: Size(150,70)) ,child: Text("About Us",style: TextStyle(color: Colors.yellow,fontFamily: "myfont",fontWeight: FontWeight.bold),)),
          ],
        )
      );
  }
}