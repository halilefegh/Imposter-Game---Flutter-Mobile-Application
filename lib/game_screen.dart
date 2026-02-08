

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imposter/home_screen.dart';

class GameScreen extends StatefulWidget{
  final int playernum;
  static const int wordNum=300;
  static const List<String> words = [
  "Elma", "Armut", "Muz", "Çilek", "Karpuz", "Kavun", "Üzüm", "Kiraz", "Erik", "Kayısı",
  "Şeftali", "Limon", "Portakal", "Mandalina", "Nar", "İncir", "Vişne", "Ananas", "Avokado", "Kivi",
  "Domates", "Salatalık", "Biber", "Patlıcan", "Patates", "Soğan", "Sarımsak", "Havuç", "Mısır", "Bezelye",
  "Fasulye", "Brokoli", "Ispanak", "Lahana", "Marul", "Maydanoz", "Nane", "Kekik", "Zeytin", "Peynir",
  "Yumurta", "Yoğurt", "Süt", "Ekmek", "Simit", "Poğaça", "Börek", "Makarna", "Pilav", "Çorba",
  "Köfte", "Tavuk", "Balık", "Sucuk", "Salam", "Sosis", "Pastırma", "Kebap", "Döner", "Lahmacun",
  "Pizza", "Hamburger", "Sandviç", "Tost", "Çay", "Kahve", "Su", "Ayran", "Meyve Suyu", "Gazoz",
  "Limonata", "Sıcak Çikolata", "Salep", "Boza", "Dondurma", "Baklava", "Künefe", "Muhallebi", "Sütlaç", "Pasta",
  "Kedi", "Köpek", "Kuş", "Balık", "Aslan", "Kaplan", "Fil", "Zürafa", "Maymun", "Ayı",
  "Kurt", "Tilki", "Tavşan", "Fare", "At", "Eşek", "İnek", "Koyun", "Keçi", "Tavuk",
  "Horoz", "Ördek", "Kaz", "Kuğu", "Kartal", "Şahin", "Baykuş", "Papağan", "Yılan", "Timsah",
  "Kaplumbağa", "Kurbağa", "Arı", "Kelebek", "Karınca", "Örümcek", "Sinek", "Ahtapot", "Balina", "Yunus",
  "Güneş", "Ay", "Yıldız", "Dünya", "Bulut", "Yağmur", "Kar", "Rüzgar", "Şimşek", "Gökkuşağı",
  "Deniz", "Göl", "Nehir", "Dağ", "Orman", "Ada", "Mağara", "Çöl", "Şelale", "Volkan",
  "Ev", "Apartman", "Villa", "Saray", "Kale", "Okul", "Hastane", "Cami", "Kilise", "Kütüphane",
  "Müze", "Tiyatro", "Sinema", "Market", "Bakkal", "Manav", "Kasap", "Eczane", "Restoran", "Kafe",
  "Park", "Bahçe", "Sokak", "Cadde", "Meydan", "Köprü", "Tünel", "Durak", "Liman", "Havalimanı",
  "Araba", "Otobüs", "Kamyon", "Motosiklet", "Bisiklet", "Tren", "Tramvay", "Metro", "Uçak", "Helikopter",
  "Gemi", "Tekne", "Vapur", "Sandal", "Roket", "Traktör", "Taksi", "Ambulans", "İtfaiye", "Polis Arabası",
  "Masa", "Sandalye", "Koltuk", "Yatak", "Dolap", "Raf", "Halı", "Perde", "Ayna", "Lamba",
  "Televizyon", "Bilgisayar", "Telefon", "Tablet", "Radyo", "Saat", "Ütü", "Fırın", "Ocak", "Buzdolabı",
  "Çamaşır Makinesi", "Bulaşık Makinesi", "Süpürge", "Mikser", "Tost Makinesi", "Kettle", "Kumanda", "Klavye", "Fare (Mouse)", "Hoparlör",
  "Defter", "Kitap", "Kalem", "Silgi", "Cetvel", "Çanta", "Sözlük", "Harita", "Pusula", "Büyüteç",
  "Mikroskop", "Teleskop", "Hesap Makinesi", "Dosya", "Zımba", "Ataş", "Makas", "Yapıştırıcı", "Bant", "Kağıt",
  "Ceket", "Pantolon", "Gömlek", "Tişört", "Kazak", "Hırka", "Mont", "Palto", "Yelek", "Elbise",
  "Etek", "Şort", "Pijama", "Bornoz", "Mayo", "Şapka", "Bere", "Eldiven", "Atkı", "Çorap",
  "Ayakkabı", "Bot", "Çizme", "Terlik", "Sandalet", "Kemer", "Gözlük", "Saat", "Küpe", "Kolye",
  "Yüzük", "Bilezik", "Cüzdan", "Anahtar", "Şemsiye", "Tarak", "Diş Fırçası", "Sabun", "Şampuan", "Havlu",
  "Futbol", "Basketbol", "Voleybol", "Tenis", "Yüzme", "Koşu", "Güreş", "Boks", "Okçuluk", "Satranç",
  "Gitar", "Piyano", "Keman", "Davul", "Flüt", "Bağlama", "Ney", "Trompet", "Arp", "Zil",
  "Çekiç", "Tornavida", "Pense", "Testere", "Balta", "Kürek", "Kazma", "Fırça", "Boya", "Merdiven",
  "Para", "Bilet", "Mektup", "Zarf", "Gazete", "Dergi", "Afiş", "Bayrak", "Kupa", "Madalya",
  "Çöp Kutusu", "Kova", "Süzgeç", "Tava", "Tencere", "Tabak", "Bardak", "Kaşık", "Çatal", "Bıçak"
  ];
  const GameScreen({super.key,required this.playernum});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int curplayer=1;
  int curstate=0;
  final r = Random();
  late int imposternum=1+r.nextInt(widget.playernum);
  late int imposterWordIndex=r.nextInt(GameScreen.wordNum);
  late int normalWordIndex=r.nextInt(GameScreen.wordNum);
  void durumuDegistir() {
    setState(() {
      if(curstate==1 && curplayer==widget.playernum){
        curstate=3;
        return;
        }
      if(curstate==1){curplayer++;}
      curstate = (curstate == 0) ? 1 : 0;
      
    });
  }
  Widget getBody(){
    if(curstate==0){
        return ReadyWidget(playernum: curplayer,func: durumuDegistir);
      }
    else if (curstate==1){       
        return ShowWord(playernum: curplayer,imposternum: imposternum,func: durumuDegistir,imposterword: GameScreen.words[imposterWordIndex],word: GameScreen.words[normalWordIndex],);
    }
    else{
      return GameOver();
    }  
  }
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      color: Colors.black,
      home: Scaffold(
        appBar: AppBar(shadowColor: Colors.black,backgroundColor: const Color.fromARGB(255, 60, 7, 74),toolbarHeight: 80,title: Text("Imposter Game",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 45),),centerTitle: true,),
        body: getBody(),
        backgroundColor: const Color.fromARGB(255, 76, 1, 89),
      ),

    );
  }
}





class ReadyWidget extends StatefulWidget{
  final int playernum;
  final VoidCallback func;
  const ReadyWidget({super.key,required this.playernum,required this.func});

  @override
  State<ReadyWidget> createState() => _ReadyWidgetState();
}

class _ReadyWidgetState extends State<ReadyWidget> {
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 200,),
          Container(
            width: 350,
            height: 100,
            alignment: Alignment.center,
            
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 70, 3, 91),
              borderRadius: BorderRadius.circular(60),
              boxShadow: const [BoxShadow(blurRadius: 45,color: Colors.black)],
              ),
            child:Text("${widget.playernum}. player's turn.",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "myfont"),),
            
          ),
          SizedBox(height: 100,),
          ElevatedButton(onPressed: widget.func,style: ElevatedButton.styleFrom(minimumSize: Size(200,60),backgroundColor:const Color.fromARGB(255, 70, 3, 91),),child: Text("Next",style: TextStyle(color: Colors.yellow,fontSize: 30,fontWeight: FontWeight.bold,fontFamily: "myfont"),),),
        ],
      ),
    );
  }
}
class ShowWord extends StatefulWidget{
  final int playernum;
  final int imposternum;
  final String word;
  final String imposterword;
  final VoidCallback func;
  const ShowWord({super.key,required this.playernum,required this.imposternum,required this.func,required this.word,required this.imposterword});

  @override
  State<ShowWord> createState() => _ShowWordState();
}

class _ShowWordState extends State<ShowWord> {
  @override
  Widget build(BuildContext context) {
    String word;
    if(widget.playernum==widget.imposternum){word=widget.imposterword;}
    else{word=widget.word;}
      return SizedBox(
        width: double.infinity,
        child:Column(
        
          children: [
              SizedBox(height: 200,),
              Text("${widget.playernum}. player's word is:",style: TextStyle(fontFamily: "myfont",fontWeight: FontWeight.bold,color: Colors.yellow,fontSize: 40),),
              SizedBox(height: 75,),
              Container(
                width: 150,
                height: 70,
                alignment: Alignment.center,
                
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(40) ,color:const Color.fromARGB(255, 70, 3, 91),boxShadow: [BoxShadow(blurRadius: 30)],),
                child: Text(word,style: TextStyle(fontFamily: "myfont",color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 25),),
              ),
              SizedBox(height: 70,),
              ElevatedButton(onPressed: widget.func,style: ElevatedButton.styleFrom(minimumSize: Size(100,60),backgroundColor:const Color.fromARGB(255, 70, 3, 91) ) ,child: Text("Next",style: TextStyle(fontFamily: "myfont",fontWeight: FontWeight.bold,fontSize: 25,color: Colors.yellow),))
          ],

        )
    );
  }
}
class GameOver extends StatelessWidget{
  const GameOver({super.key});
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: double.infinity,
      child: Column(
        
        children: [
          SizedBox(height: 250,),
          Text("Game Started!",style: TextStyle(fontFamily: "myfont",fontWeight: FontWeight.bold,fontSize: 60,color: Colors.yellow,shadows: [Shadow(blurRadius: 8)]),),
          SizedBox(height: 100,),
          ElevatedButton(style: ElevatedButton.styleFrom(elevation: 15,shadowColor: Colors.black,backgroundColor: const Color.fromARGB(255, 70, 3, 91),minimumSize: Size(200,75)),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));}, child: Text("Press to Restart",style: TextStyle(fontFamily: "myfont",fontWeight: FontWeight.bold,fontSize: 30,color: Colors.yellow),))
        ],
      ),
    );
  }
}