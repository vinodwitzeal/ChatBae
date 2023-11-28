import 'package:chat_bae/constants/colors_const.dart';
import 'package:flutter/material.dart';

class ChatBaeLogo extends StatelessWidget {
  double size;
  bool slogan;

  ChatBaeLogo({this.slogan=true,required this.size, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image(
              image: const AssetImage("images/logo.png"),
              width: size,
              height: size,
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: size*0.1),
              child: Visibility(
                visible: slogan,
                child: Text(
                  "Bae connects Bae",
                  style: TextStyle(
                    fontSize: size * 0.1,
                    color: AppColors.light,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
