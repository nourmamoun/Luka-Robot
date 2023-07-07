import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  String ImagePath;
   SquareTile({super.key,required this.ImagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,top: 20,bottom: 20,right: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey,width: 1),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Image.asset(ImagePath, height: 40,),
      ),
    );
  }
}