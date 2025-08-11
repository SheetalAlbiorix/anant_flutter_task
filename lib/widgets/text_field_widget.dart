import 'package:flutter/material.dart';

var emailText = TextEditingController();
var passText = TextEditingController();

TextField get etextField => TextField(
    controller: emailText,
    decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                color: Colors.orangeAccent
            )
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                color: Colors.blueAccent
            )
        ),
        disabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                color: Colors.blueAccent
            )
        ),


        suffixIcon: IconButton(
          icon:Icon(Icons.remove_red_eye,color: Colors.orangeAccent,),
          onPressed: (){

          },
        ),
        prefix:Icon(Icons.email,color: Colors.orangeAccent)

    )
);

TextField get ptextField => TextField(
    controller: passText,
    decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                color: Colors.orangeAccent
            )
        )
    ),
);