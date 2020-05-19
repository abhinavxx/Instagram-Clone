import 'package:flutter/material.dart';
import 'package:instagramclone/post.dart';
import 'package:instagramclone/story.dart';
import 'package:flutter_icons/flutter_icons.dart';
 List<Post> posts =[
  Post(
    username: "Abhinav",
    userImage: "assets/1.jpg",
    postImage: "assets/2.jpg",
    caption: "Hello there welcome here",

  ),
   Post(
    username: "Abhishek",
    userImage: "assets/1.jpg",
    postImage: "assets/2.jpg",
    caption: "Hello there welcome here",

  ), Post(
    username: "Rahul",
    userImage: "assets/1.jpg",
    postImage: "assets/2.jpg",
    caption: "Hello there welcome here",

  ), Post(
    username: "Abhay",
    userImage: "assets/1.jpg",
    postImage: "assets/2.jpg",
    caption: "Hello there welcome here",

  ), Post(
    username: "Arnav",
    userImage: "assets/1.jpg",
    postImage: "assets/2.jpg",
    caption: "Hello there welcome here",

  ), Post(
    username: "Abhinav",
    userImage: "assets/1.jpg",
    postImage: "assets/2.jpg",
    caption: "Hello there welcome here",

  ), Post(
    username: "Abhinav",
    userImage: "assets/1.jpg",
    postImage: "assets/2.jpg",
    caption: "Hello there welcome here",

  ),
];
 List <Story> stories=
  [
Story("assets/1.jpg",
"Abhi"),
Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),Story("assets/1.jpg",
"Abhi"),
];

class Feed extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container(
       
      child: SingleChildScrollView(
              child: Column(children: <Widget>[
          Divider(),
          Container(
            margin: EdgeInsets.symmetric(horizontal:28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Stories",
              style:TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.black)),
              Text("Watch All",
              style:TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.black)),
            ],
            ),
          ),
         Container(
           width:MediaQuery.of(context).size.width,
           margin: EdgeInsets.symmetric(vertical:10),
           height: 120,
           child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                
                children: stories.map((story){
                  return  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(horizontal:15),
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(80),
                          border:Border.all(
                            width:3,
                            color:Color(0xFF8e44ad),
                          )
                        ),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                              child: Image(
                              image:AssetImage(story.image),
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height:10,),
                      Text(story.name)
                    ],
                  );
                }).toList(),
           ),
          ),
          
          Container(
            width:MediaQuery.of(context).size.width,
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: posts.length,
              itemBuilder: (ctx,i){
                return Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal:10,
                  ),
                  child:Column(children: <Widget>[
                      Container(
                          padding: EdgeInsets.symmetric(
                    horizontal:10,
                    vertical:10,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image(
                                image: AssetImage(posts[i].userImage),
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                                ),
                              ),
                          SizedBox(width:10),
                          Text(posts[i].username)
                            ],
                          ),
                          IconButton(icon: Icon(SimpleLineIcons.options), onPressed: (){})
                        ],
                    ),
                      ),
                    Image(image: AssetImage(posts[i].postImage),
                    width: MediaQuery.of(context).size.width,
                    
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(children: <Widget>[
                          IconButton(icon: Icon(FontAwesome.heart_o), onPressed: (){}),
                          IconButton(icon: Icon(FontAwesome.comment_o), onPressed: (){}),
                          IconButton(icon: Icon(FontAwesome.send_o), onPressed: (){}),
                        ],),
                        IconButton(icon: Icon(FontAwesome.bookmark_o), onPressed: (){})
                      ],
                    ),

                    Container(
                      width:MediaQuery.of(context).size.width,
                      margin:EdgeInsets.symmetric(horizontal:10),
                      child:RichText(
                        softWrap: true,
                        overflow: TextOverflow.visible,
                        text: TextSpan(
                          children:[
                            TextSpan(
                              text:"Liked by",
                              style:TextStyle(color: Colors.black)
                            ),
                            TextSpan(
                              text:"Arsh,",
                              style:TextStyle(
                               fontWeight: FontWeight.bold,
                             color: Colors.black)
                            ),TextSpan(
                              text:"Shreya,",
                              style:TextStyle(
                               fontWeight: FontWeight.bold,
                            color: Colors.black)
                            ),TextSpan(
                              text:"and",
                              style:TextStyle(                               
                                 fontWeight: FontWeight.bold,
                                color: Colors.black)
                            ),
                            TextSpan(
                              text:"563 others",
                              style:TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)
                            ),
                          ]
                        )
                      )
                    ),
                     Container(
                      width:MediaQuery.of(context).size.width,
                      margin:EdgeInsets.symmetric(horizontal:10,vertical: 5),
                      child:RichText(
                        softWrap: true,
                        overflow: TextOverflow.visible,
                        text: TextSpan(
                          
                          children:[
                            TextSpan(
                              text:posts[i].username,
                              style:TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold)
                            ),
                            
                            TextSpan(
                              text:"${posts[i].caption}",
                              style:TextStyle(
                             color: Colors.black)
                            ),
                          ]
                        )
                      )
                    ),
                    Container(
                      margin:EdgeInsets.symmetric(horizontal: 14),
                      alignment:Alignment.topLeft,
                      child:Text("May 2020",
                      textAlign: TextAlign.start,
                      style: TextStyle(color:Colors.grey),)
                    )
                  ],)
                );
              }),
              )
          
           ],
        ),
      )
    
  
    );
  }
}