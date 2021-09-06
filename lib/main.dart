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

  // bubble func

  Padding getBubbleRight(){
    return Padding(
      padding: EdgeInsets.all(5),
      child: Bubble(
        child: Text('Hey!'),
        alignment: Alignment.bottomRight,
        nip: BubbleNip.rightTop,
        color: Color(0xffe1ffc6),
      ),
    );
  }

  Padding getBubbleLeft(String text){
    return Padding(
      padding: EdgeInsets.all(5),
      child: Bubble(
        child: Text('$text'),
        alignment: Alignment.bottomLeft,
        nip: BubbleNip.leftBottom,
        color: Colors.white,
      ),
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
            CircleAvatar(backgroundImage: AssetImage('assets/profile_pic.jpg'), radius: 18,),
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
            fit: BoxFit.fitHeight,
            image: AssetImage('assets/whatsapp_background.jpg')
          )
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,

          children: [

            Expanded(child:

            // Messages Container & messages as function

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  getBubbleRight(),
                  getBubbleLeft("Heyy man, what's up!?"),
                  getBubbleRight(),
                  getBubbleLeft("Heyy man"),
                ],
              )
            )),


            // Send message panel
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.grey,
                      child: Row(
                          children: [
                            Container(
                              //  margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                height: 45,
                                width: 315,
                                decoration: BoxDecoration(
                                    color: Color(0xfffefeff),
                                    borderRadius: BorderRadius.all(Radius.circular(200))
                                ),

                                child: Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.fromLTRB(10,0,0,0),
                                        child: Icon(Icons.emoji_emotions_outlined, color: Color(0xff868d90))),

                                    SizedBox(width: 5),

                                    Text('Message', style: TextStyle(
                                        color: Color(0xffb4b5b4),
                                        fontSize: 18
                                    )),
                                    Expanded(child: SizedBox(width: 1)),
                                    Icon(Icons.attach_file_rounded, color: Color(0xff868d90)),
                                    SizedBox(width: 10),
                                    Icon(Icons.camera_alt_rounded, color: Color(0xff868d90)),
                                    SizedBox(width: 10),
                                  ],
                                )
                            ),
                            SizedBox(width: 05),
                            CircleAvatar(radius: 25,
                                child: Icon(Icons.mic_rounded, color: Colors.white),
                                backgroundColor: Color(0xff065f55))
                          ]
                      )
                  )
                ],
              ),
            ),
          ],
        )


      ),
    );
  }
}
