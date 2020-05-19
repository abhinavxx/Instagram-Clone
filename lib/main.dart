import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagramclone/explore.dart';
import 'package:instagramclone/feed.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
var _pages=[
Feed(),
Feed(),
Feed(),
Feed(),
Feed(),
];
int curretPage=0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xFFEEEEEEE),
        brightness: Brightness.light,
        title: Text("Instagram", 
        style:GoogleFonts.cairo(
          fontSize: 25,
           textStyle: TextStyle(color: Colors.black, letterSpacing: .5),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
        ),  
        ),
        leading: Icon(Feather.camera,
        color: Colors.black,),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Feather.send   ,
                 color: Colors.black,),
          ),

        ],
        ),
        body: _pages[curretPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: curretPage,
          onTap: (i){
            setState(() {
              curretPage=i;
            });
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          items: 
        [
          BottomNavigationBarItem(  
          icon:Icon(Foundation.home),
          title: Text("Feed")),
           BottomNavigationBarItem(  
          icon:Icon(Feather.search),
           title: Text("Search"),), 
          BottomNavigationBarItem(  
          icon:Icon(Feather.plus_square),
           title: Text("Upload")),
           BottomNavigationBarItem(  
          icon:Icon(Feather.heart),
           title: Text("Likes")),
           BottomNavigationBarItem(  
          icon:Icon(Feather.user),
           title: Text("Account")),
        ]),

    );}}