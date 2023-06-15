import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/new_screen.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "Bassil";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Application"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewScreen()));
                },
                child: Icon(
                  CupertinoIcons.heart_fill,size: 50,color: Colors.red,),
              ),
              Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/0/0c/Cow_female_black_white.jpg"),
              Text(
                name, style: TextStyle(fontSize: 40),),
              ElevatedButton(
                  onPressed: (){
                setState(() {

                });
                if(name == "Bassil"){
                  name = "Gana";
                }
                else{
                  name = "Bassil";
                }
                print(name);
              }, child: Text("Press Here")),
            ],
          )
      ),
    );
  }
}
