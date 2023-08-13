import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class SendMessageBar extends StatelessWidget {
  const SendMessageBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.07,
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor
          )
        ),
        color: chatBarMessage,
      ),
      child: Row(
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.emoji_emotions_outlined, color: Colors.grey,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.attach_file, color: Colors.grey,)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left:10.0, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: searchBarColor,
                  filled: true,
                  hintText: 'Type a message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none
                    )
                  ),
                ),
              ),
            )
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.mic, color: Colors.grey,)),
        ],
      ),
    );
  }
}