
import 'package:flutter/material.dart';

import 'MessageScreen.dart';

class MyHome extends StatelessWidget{
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Chamos Optical',),
          leading: IconButton(
            icon: Icon(Icons.menu_rounded),
            onPressed: (){},
          ),

          actions: <Widget>[
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
          ],

          bottom: TabBar(
            tabs: [
              Tab(icon:Icon(Icons.shopping_cart_rounded),text:'Buy'),
              Tab(icon:Icon(Icons.favorite_border),text:'Suggestions',),
              Tab(icon:Icon(Icons.location_history),text: "About",),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            tab1(),
            tab2(),
            tab3(),

          ],
        ),
        floatingActionButton: FloatingActionButton(// yata thiyena questions ahnn puluwn fixed button eka
          child: Icon(Icons.question_answer),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_){
                  return MessageScreen();
            }));
          },
        ),
      ),
    );
  }
}


Widget tab1(){
  return Container(
    child: ListView(
      children: <Widget>[.
        ListTile(
          title: Image(
            image: AssetImage('images/sunglass.jpg'),
          ),
          subtitle: Text('Sun Glasses',textAlign: TextAlign.center,),
          onTap: (){},
        ),
        Divider(),
        ListTile(
          title: Image(
            image: AssetImage('images/computerglass.jpg'),
          ),
          subtitle: Text('Computer Glasses',textAlign: TextAlign.center,),
          onTap: (){},
        ),
        Divider(),
        ListTile(
          title: Image(
            image: AssetImage('images/frames.jpg'),
          ),
          subtitle: Text('Frames',textAlign: TextAlign.center,),
          onTap: (){},
        ),
        Divider(),
        ListTile(
          title: Image(
            image: AssetImage('images/eyelense.jpg'),
          ),
          subtitle: Text('Eye Lenses',textAlign: TextAlign.center,),
          onTap: (){},
        ),
      ],
    ),
  );
}
Widget tab3(){
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(top:5),
    child: Column(
      children: <Widget>[
        Container(
          height: 180,
          child: ListView(
            children: <Widget>[
              Image(
                image: AssetImage('images/slide2.jpg'),
                width: double.infinity,
              ),
              Image(
                image: AssetImage('images/slide1.jpg'),
                width: double.infinity,
              ),
              Image(
                image: AssetImage('images/slide2.jpg'),
                width: double.infinity,
              ),
            ],
          ),
        ),

        Container(

          margin: EdgeInsets.only(top: 10,bottom: 10),
          padding: EdgeInsets.all(5),
          child: Text('"We know how important it is to try on and feel your glasses before you buy. That’s why at Jayasekara Optical we offer a home trial service. And it’s completely free! So go ahead and choose your frames now!"',
            style:TextStyle(fontSize: 18,color: Colors.blueGrey),),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shop,size: 30,),
            Text(' Look Good See Better.',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on,color: Colors.red,),
            Text('Galle Road, Ambalangoda..',style: TextStyle(fontSize: 13),)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.call,color: Colors.green,),
            Text(' 0912264090',style: TextStyle(fontSize: 13),)
          ],
        ),


      ],
    ),
  );
}

Widget tab2(){
  return Container(
    height: 180,
    child: ListView(
      children: <Widget>[
        Image(
          image: AssetImage('images/slide2.jpg'),
          width: double.infinity,
        ),
        Image(
          image: AssetImage('images/slide1.jpg'),
          width: double.infinity,
        ),
        Image(
          image: AssetImage('images/slide2.jpg'),
          width: double.infinity,
        ),
      ],
    ),
  );
}

