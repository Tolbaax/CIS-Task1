import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
      ),
      leading: const Padding(
        padding: EdgeInsets.all(5.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-760w,f_auto,q_auto:best/streams/2013/September/130903/8C8841868-8fb1d903-b402-03f4-c3ab-7f1ec513daa8-bbs5b-gallery-0878-rgb-v1.jpg',
          ),
        ),
      ),
      title: const Text(
        'Chats',
        style: TextStyle(color: Colors.white, fontSize: 25.0),
      ),
      actions: const [
        CircleAvatar(
          backgroundColor: Color.fromRGBO(51, 51, 51, 1),
          child: Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
