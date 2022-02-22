import 'package:flutter/material.dart';
import 'package:jayasekara_optical/screens/HomeScreen.dart';

class MessageScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions'),
        leading: IconButton(
          icon: Icon(Icons.menu_open_rounded),
          onPressed: (){
            Navigator.pop(context,MyHome());
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(5),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget> [
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Text('We are always trying to give you a good service! Ask??',
                style: TextStyle(fontSize: 20,color: Colors.blueGrey),),
            ),

            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),

            ),
            submitButton(),

          ],
        )
      ),
    );
  }
}

Widget submitButton(){
  return Container(
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
        child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 18),),
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        onPressed: (){},
      )
  );
}
