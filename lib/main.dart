import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home()
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  // bubble function

  Padding getBubbleRight(String text){

    return Padding(
      padding: EdgeInsets.all(7),
      child: Bubble(
        padding: BubbleEdges.all(5.0),
        nip: BubbleNip.rightTop,
        stick: true,
        child: Container(
          padding: EdgeInsets.fromLTRB(3, 1, 3, 1),
          child: Text("$text", style: TextStyle(
            fontWeight: FontWeight.w400,
            letterSpacing: 0.2,
            wordSpacing: 0.5,
          )),
        ),
        alignment: Alignment.topRight,
        nipRadius: 1,
        radius: Radius.circular(5),
        margin: BubbleEdges.fromLTRB(0, 0, 5, 0),
        color: Color(0xffe2fec8),
        elevation: 0.5,
      )
    );
  }

  Padding getBubbleLeft(String text){

    return Padding(
        padding: EdgeInsets.all(7),
        child: Bubble(
          padding: BubbleEdges.all(5.0),
          nip: BubbleNip.leftBottom,
          stick: true,
          child: Container(
            padding: EdgeInsets.fromLTRB(3, 1, 3, 1),
            child: Text("$text", style: TextStyle(
              fontWeight: FontWeight.w400,
              letterSpacing: 0.2,
              wordSpacing: 0.5,
            )),
          ),
          alignment: Alignment.bottomLeft,
          nipRadius: 1,
          radius: Radius.circular(5),
          margin: BubbleEdges.fromLTRB(0, 0, 5, 0),
          color: Color(0xffffffff),
          borderWidth: 1,
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 65,
        backgroundColor: Color(0xff065f55),

        title: Row(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Icon(Icons.arrow_back, color: Color(0xfffefefe))),
            SizedBox(width: 10),
            CircleAvatar(backgroundImage: AssetImage('assets/profile_pic.jpg'), radius: 19,),
            SizedBox(width: 10),
            Text('Delwinnn', style: TextStyle(
                letterSpacing: 0.2,
                fontWeight: FontWeight.w600,
                fontSize: 19
            )),

            Expanded(child: SizedBox(width: 2)),

            Icon(Icons.videocam_rounded, size: 25,),
            SizedBox(width: 15),
            Icon(Icons.call_rounded, size: 21),
            SizedBox(width: 10),
            Icon(Icons.more_vert),

          ],
        ),
      ),
      extendBody: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/whatsapp_background.jpg'),
            fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            //text panel
            getBubbleLeft('Hey! When will you upload next reel?'),
            getBubbleRight("It's being uploaded"),


            // send msg panel
            Container(
              margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 8,
                    child:Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      // border: Border.all(width: 0.2),
                      boxShadow: [BoxShadow(
                        color: Color(0xff8a8d90),
                        spreadRadius: 0.2,
                        blurRadius: 0.5
                      )],
                      color: Color(0xfffefeff)
                    ),
                    height: 45,
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Icon(Icons.emoji_emotions_outlined, color: Color(0xff888a8f))),
                        SizedBox(width: 10),
                        Text('Message', style: TextStyle(
                          color: Color(0xff888a8f),
                          fontSize: 18
                        )),

                        Expanded(child: SizedBox(width:45)),
                        Icon(Icons.attach_file_rounded, color: Color(0xff888a8f)),
                        SizedBox(width: 10),
                        Icon(Icons.camera_alt_rounded, color: Color(0xff888a8f)),
                        SizedBox(width: 10),
                      ],
                    )
                  )),
                  SizedBox(width: 10),
                  CircleAvatar(
                    child: Icon(Icons.mic_rounded, color: Colors.white),
                    backgroundColor: Color(0xff008878),
                    radius: 25,),
                  SizedBox(width: 5),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
