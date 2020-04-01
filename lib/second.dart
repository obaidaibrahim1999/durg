import 'package:flutter/material.dart';
import 'First.dart';
class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ImageDrug().image("image/drug1.jpg"),
          SizeBoxDrug().sizeBox(20.0),
         TextFieldDrug().textField("name",Icon(Icons.person)),
          SizeBoxDrug().sizeBox(20.0),
          TextFieldDrug().textField("name",Icon(Icons.person)),
          SizeBoxDrug().sizeBox(20.0),
          TextFieldDrug().textField("name",Icon(Icons.person)),
          SizeBoxDrug().sizeBox(20.0),
          TextFieldDrug().textField("name",Icon(Icons.person)),
          SizeBoxDrug().sizeBox(20.0),
          TextFieldDrug().textField("name",Icon(Icons.person)),
          SizeBoxDrug().sizeBox(20.0),
          ButtonDrug().button("تسجيل الدخول")

        ],
      ),
    );
  }
}











class TextFieldDrug{
  Widget textField(String string,Icon icon){
    return TextField(
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          labelText: string,
          icon:icon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))
      ),
    );
  }
}