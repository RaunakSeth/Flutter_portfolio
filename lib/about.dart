import 'package:flutter/material.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,),
    body: Container(
    child:Stack(
    children: [
    Container(
    margin: EdgeInsets.only(top: 20),
    child: ShaderMask(
    shaderCallback: (rect){
    return LinearGradient(
    begin: Alignment.center,
    end: Alignment.bottomCenter
    ,colors: [Colors.black,Colors.transparent]).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
    },
    blendMode: BlendMode.dstIn,
    child: Image.network('https://cdn270.picsart.com/e72d40da-10bf-4544-af1c-30344fbbed13/410334024028211.png?to=crop&type=webp&r=768x1025&q=85',height:600,
    fit:BoxFit.contain),
    ),
    ),
    Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(
    top: MediaQuery.of(context).size.height*0.65)
    ,
    child: Column(
    children: [
      Text('Hello I am',style:TextStyle(color:Colors.white,fontSize: 40)),
    Text('Raunak Seth',style:TextStyle(color:Colors.white,fontSize:60 ,fontWeight: FontWeight.bold )),
    Text('Android Developer',style:TextStyle(color:Colors.white,fontSize: 20)),
      SizedBox(
        height: 5,
      ),
      Text('Kiet Group of Institutions',style:TextStyle(color:Colors.white,fontSize: 20)),
      Text('raunak.2125csit1074@kiet.edu',style:TextStyle(color:Colors.white,fontSize: 20)),
      Text('9005919123',style:TextStyle(color:Colors.white,fontSize: 20))
    ],
    ),
    ),
    ],
    ),
    ),
    );
  }
}
