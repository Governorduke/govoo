import'package:flutter/material.dart';
import 'package:govoo/about.dart';
import 'package:govoo/home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
final pages = const [ 
   Center(child: Text("Home page")),
    Center(child: Text("Edit page")),
   Center(child: Text("Add user page")),
];
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Image.asset(
              'assets/images/duke.png',
              fit: BoxFit.cover,
            ),
          
          ],
        ),
      ),
      drawer:  Drawer(
        child:ListView(children: [
      const DrawerHeader(decoration: BoxDecoration(
            color: Colors.blue),
          child: Center(child: Text('DUKE',
          style: TextStyle(color: Colors.white,fontSize: 40,
          fontWeight: FontWeight.w900)))),
          
         ListTile(
          title: const Text("Home"),
        leading:const Icon(Icons.home),
        onTap: (){
          Navigator.push(context,
          // ignore: empty_statements
           MaterialPageRoute(builder: (context) => const HomePage()));
        }  
        ),
        ListTile(
          title: const Text("About"),
        leading:const Icon(Icons.info),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const AboutPage()));
        },  
        ),
        ]
         
      ),  
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap:(int i) => setState(() => index =i) ,
        type: BottomNavigationBarType.fixed,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.edit,
              size: 20,
            ),
            label: 'Edit'),
             BottomNavigationBarItem(
            icon: Icon(
              Icons.person_add_alt,
              size: 20,
            ),
            label: 'Add'),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_applications_rounded,
              size: 20,
            ),
            label: 'Settings'),
            
        ],
      ),
      
    );
  }
}
