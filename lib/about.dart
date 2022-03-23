import 'package:flutter/material.dart';


class AboutPage extends StatelessWidget{
 const AboutPage({Key?key});

  @override 
  Widget build(BuildContext context){
    return Scaffold( 
      body: SafeArea(child: Column(children: [Container(
        height: 200,
        decoration: const BoxDecoration(gradient: 
        LinearGradient(colors:[Colors.blue,Colors.white
        ],
        begin: Alignment.bottomRight,end: Alignment.topLeft )),
        child: Column(children:const
         [Padding(padding: EdgeInsets.fromLTRB(200,20,200,20),
         ),
         SizedBox(height:10 ),
         Text("Governor",
         style: TextStyle(fontSize: 30,color:Colors.white,
         fontWeight: FontWeight.w900),)
         ]),
      )])),
    );
  }
}