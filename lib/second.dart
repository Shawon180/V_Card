import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Center(child: Text('Vcard')),
      ),
      body:Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/24.jpg'),
                radius: 60,
              ),
              Text('Shawon Hasan',

                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Mobile Application developer',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Oswald',
                  color: Colors.white,
                ),
              ),
              SizedBox(
                child: Divider(
                  thickness: 5,
                  color: Colors.amberAccent,
                  height: 20,
                ),
              ),
              Card(
                margin: EdgeInsets.all(20),

                child: ListTile(
                  onTap: (){

                  },
                  title: Text('adc@gmail.com'),
                  leading: Icon(Icons.email,color: Colors.black38,),
                ),
              ),
              Card(
                margin: EdgeInsets.all(20),
                child: ListTile(
                  onTap: (){},
                  title: Text('0155845934'),
                  leading: Icon(Icons.phone,color: Colors.black38,),
                ),
              ),
            ],
          ),
        ),
      ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.home),
      ),

    );
  }
}