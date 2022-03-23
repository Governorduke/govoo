import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
 const  HomePage({Key?key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(child: Column(children: [Container(
        height: 250,
        decoration: const BoxDecoration(gradient: 
        LinearGradient(colors:[Colors.blue,Colors.white
        ],
        begin: Alignment.bottomRight,end: Alignment.topLeft )),
        child: Column(children:const
         [Padding(padding: EdgeInsets.fromLTRB(120,20,120,20),
          child: CircleAvatar(backgroundColor: Colors.white,
         backgroundImage: AssetImage('assets/images/duke.png'),
         radius: 75,
         
         )),
         SizedBox(height:10 ),
         Text("Governor",
         style: TextStyle(fontSize: 30,color:Colors.white,
         fontWeight: FontWeight.w900),
         )]),
      ),
      Container(
        width: 60,
        height: 6,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13)),
      ),
     const  SizedBox(
        height: 40,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:const [ Text("Amala.C.Duke",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w400),
        )],
      )
      ]
      
      ),
      ),
     
    
    );
  }
}