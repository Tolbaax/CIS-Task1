import 'package:flutter/material.dart';
import 'package:task2/model/chat_model.dart';
import 'package:task2/view/widgets/custom_nav_bar.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_chat.dart';
import '../widgets/custom_text_filed.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CustomAppBar(),
      ),
      body: Column(
        children: [
          const CustomTextFiled(),
          Container(
            height: 140,
            margin: const EdgeInsetsDirectional.only(start: 20.0, top: 10.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: chats.length,
              itemBuilder: (context, index) => CustomChatList(
                index: index,
                model: chats[index],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
