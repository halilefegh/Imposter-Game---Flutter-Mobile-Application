

import 'package:flutter/material.dart';
import 'package:imposter/game_screen.dart';



class PlayerSelectionScreen extends StatelessWidget {
  const PlayerSelectionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(shadowColor: Colors.black,backgroundColor: const Color.fromARGB(255, 60, 7, 74),toolbarHeight: 80,title: Text("Imposter Game",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 45),),centerTitle: true,),
      backgroundColor: const Color.fromARGB(255, 76, 1, 89),
      body: InputButtons(),
    );
  }
}


class InputButtons extends StatefulWidget{
  const InputButtons({super.key});

  @override
  State<InputButtons> createState() => _InputButtonsState();
}

class _InputButtonsState extends State<InputButtons> {
  int playerNumber=3;
  void decrease(){
    if (playerNumber!=3){playerNumber--;}
    
    setState(() {});
  }
  void increase(){
    if (playerNumber<8){playerNumber++;}
    
    setState(() {});
  }
  
  @override
  Widget build(BuildContext c) {
    
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 200,),
          Text("Enter Player Number:",style: TextStyle(color:Colors.yellow,fontSize: 30,fontWeight: FontWeight.bold,shadows: [Shadow(blurRadius: 8)]),),
          SizedBox(height: 5,),
          Text(playerNumber.toString(),style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color:Colors.yellow,shadows: [Shadow(blurRadius: 8)]),),
          SizedBox(height: 15,),
          CounterControls(onDecrease: decrease, onIncrease: increase),
          SizedBox(height: 40,),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> GameScreen(playernum: playerNumber)));},style: ElevatedButton.styleFrom(minimumSize: Size(150, 60),backgroundColor: const Color.fromARGB(255, 70, 3, 91),) ,child: Text("Play Now",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.yellow,fontSize: 20),))
        ],
      ),
    );
  }
}
class CounterControls extends StatelessWidget{
  final VoidCallback onDecrease;
  final VoidCallback onIncrease;
  const CounterControls({
    super.key,
    required this.onDecrease,
    required this.onIncrease,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildActionButton(label: "-", onTap: onDecrease),
        SizedBox(width: 50,),
        _buildActionButton(label: "+", onTap: onIncrease)
      ],
    );
    
  }
  Widget _buildActionButton({required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: const Color.fromARGB(255, 70, 3, 91),
          boxShadow: const [
            BoxShadow(blurRadius: 5, color: Colors.black54),
          ],
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 40, 
            height: 1, 
            color: Colors.yellow,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  } 
  

}