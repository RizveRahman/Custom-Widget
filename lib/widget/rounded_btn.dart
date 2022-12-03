import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedBtn extends StatelessWidget{

  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;


  RoundedBtn({
      required this.btnName,
      this.icon,
      this.bgColor,
      this.textStyle,
      this.callback
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      callback!();
    },
    style: ElevatedButton.styleFrom(
      shadowColor: bgColor, backgroundColor: bgColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15)
        )
      )
    ), child: icon!=null ? Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon!,
        Text(btnName, style: textStyle,)
      ],
    ) : Text(btnName, style: textStyle,),
    );
  }

}