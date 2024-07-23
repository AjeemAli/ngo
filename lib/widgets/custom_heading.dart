import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key, required this.text, this.view = '', this.onTap}) : super(key: key);

  final String text;
  final String view;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        GestureDetector(
            onTap: onTap,
            child: Text(view,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w500),)),
      ],
    );
  }
}