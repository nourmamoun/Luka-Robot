import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants.dart';

class TextFieldWidget extends StatelessWidget {
   TextFieldWidget({super.key, this.hintText,this.obsecureText, this.redEye, this.controller, this.keyboardType});
final hintText;
final obsecureText;
 ImageIcon? redEye;
 final controller;
TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    
    return TextFormField(
      controller: controller,
                obscureText: obsecureText,
              keyboardType: keyboardType,
                decoration: InputDecoration(
                  
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(kThemeColor),
                    )
                  ),
                  hintText: hintText,
                  hintStyle:const TextStyle(
                    color: Color(0xFF8391A1),
                    fontSize: 15,
                    fontFamily: kFontFamilyUbranist,
                    fontWeight: FontWeight.w500

                  ),
                  fillColor:const Color(0xffF7F8F9),
                  filled: true,
                   suffixIcon: redEye,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffDADADA),
                    width: 2,

                  )  
                  )
                ),
              );
  }
}