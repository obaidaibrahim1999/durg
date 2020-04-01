import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class First extends StatefulWidget{
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ImageDrug().image("image/drug.jpg"),
          ButtonDrug().button("تسجيل الدخول"),
          SizeBoxDrug().sizeBox(35.0),
          ButtonDrug().button(" انشاء  حساب  "),
        ],
      ),
    );
  }
}

class ImageDrug {
  Widget image(String string) {
    return Container(
      child: Image.asset(string),
    );
  }
}


class SizeBoxDrug{
  Widget sizeBox(double h){
    return SizedBox(
       height:h,
    );
  }
}

class ButtonDrug {
  Widget button(String string) {
    return RaisedButton(
      child: Text(
        string,
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic),
      ),
      onPressed: () => debugPrint("hi"),
      color: Colors.blue,
      splashColor: Colors.white,
      padding: EdgeInsets.only(right: 150, left: 150, top: 10, bottom: 10),
    );
  }
}
