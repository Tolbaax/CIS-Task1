import 'package:flutter/material.dart';
import 'package:task2/model/chat_model.dart';

class CustomChatList extends StatelessWidget {
  final int index;
  final ChatModel model;
  const CustomChatList({Key? key, required this.index, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 75,
                width: 75,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(51, 51, 51, 1),
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: index == 0
                      ? const Icon(Icons.video_call_outlined,
                          color: Colors.white)
                      : Image.network(
                          model.img,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
              if (index != 0)
                Positioned(
                  right: 1,
                  bottom: 0,
                  child: CircleAvatar(
                    backgroundColor:
                        model.isActive == true ? Colors.green : Colors.grey,
                    radius: 8.0,
                  ),
                ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            index == 0 ? 'Create Room' : model.name,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
