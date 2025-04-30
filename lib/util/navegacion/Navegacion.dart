import 'package:flutter/material.dart';

class Navegacion{
  goTo(BuildContext context, Widget destination, {Function()? alVolver}){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => destination
        )
    ).then((onValue){
      if (alVolver != null){
        alVolver;
      }
    });
  }

  goToFull(BuildContext context, Widget destination, {Function()? alVolver}){
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => destination
        )
    ).then((onValue){
      if (alVolver != null){
        alVolver;
      }
    });
  }

  Back(BuildContext context){
    Navigator.pop(context);
  }
}