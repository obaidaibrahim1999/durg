import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'First.dart';
import 'second.dart';
class Third extends StatefulWidget {
  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPathDrug().clipPath(context),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: TextFieldDrug().textField("search", Icon(Icons.search)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child:ContainerDrug().container(context),
          ),
        ],
      ),
      bottomNavigationBar:CurvedNavigationBar(
        animationDuration: Duration(
          seconds: 1
        ),
        items: <Widget>[
          IconDrug().icon(Icon(Icons.home)),
          IconDrug().icon(Icon(Icons.home)),
          IconDrug().icon(Icon(Icons.home)),
          IconDrug().icon(Icon(Icons.home)),

        ],
      )
    ) ;
  }
}

class ContainerDrug{
  Widget container(BuildContext context){
    return  SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: Card(
        elevation: 10,
        color: Colors.white,
            child: Column(
              children: <Widget>[
                RowDrug().row(),
               DividerDrug().divider(),
                SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: ImageDrug().image("image/drug.jpg"),
                ),
                DividerDrug().divider(),
                RomIcons().rom(),
              ],
            ),
          ),
    );
  }
}
class DividerDrug{
  Widget divider(){
    return  Divider(
      indent: 10.0,
      endIndent: 10.0,
      thickness: 3.0,
      height:3.0,
      color: Colors.blue,
    );
  }
}
class RowDrug{
  Widget row(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      textDirection: TextDirection.ltr,
      children: <Widget>[
       Column(
         children: <Widget>[
           TextDrug().textInkWell("obaidaDrug"),
           SizeBoxDrug().sizeBox(5),
           TextDrug().text("hi customers"),
         ],
       ),
        CircleAvatarDrug().circleAvatar("image/drug.jpg"),
      ],
    );
  }
}
class TextDrug{
  Widget textInkWell(String stringNameDrug ){
    return InkWell(
      onTap: ()=>debugPrint("name"),
      child: Text(stringNameDrug),
    );
  }
  Widget text(String stringText){
    return Text(stringText);
  }
}

class CircleAvatarDrug{
  Widget circleAvatar(String stringImage){
    return InkWell(
      onTap: ()=>debugPrint("hi"),
      child: CircleAvatar(
        radius: 40,
        backgroundImage:AssetImage(stringImage),
      ),
    );
  }
}


class RomIcons{
  Widget rom(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        IconDrug().icon(Icon(Icons.image)),
        SizedBox(width: 10,),
        IconDrug().icon(Icon(Icons.image)),
        SizedBox(width: 10,),
        IconDrug().icon(Icon(Icons.image)),
        SizedBox(width: 10,),
        IconDrug().icon(Icon(Icons.image)),

      ],
    );
  }
}



class IconDrug{
  Widget icon(Icon icon){
    return Icon(
      icon.icon,size: 50,
    );
  }
}
class ClipPathDrug{
  Widget clipPath(BuildContext context){
    return ClipPath(
      clipper: MyCliper(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 250,
        color: Colors.blue,

      ),
    );

  }
}
class MyCliper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path=Path();
   path.lineTo(0.0,size.height-150);
   path.quadraticBezierTo(size.width/2,size.height, size.width, size.height-150);
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}