import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  final int index;
  const MobileChatScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(info[index]['profilePic'].toString(),),
              radius: 16,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              info[index]['name'].toString(),
              style: const TextStyle(
                fontSize: 15
              ),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.call)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList()
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: mobileChatBoxColor,
                      filled: true,
                      prefixIcon: IconButton(
                        icon: const Icon(Icons.emoji_emotions_outlined, color: Colors.grey,),
                        onPressed: (){},
                      ),
                      hintText: 'Message',
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.camera_alt, color: Colors.grey,),
                            onPressed: (){},
                          ),
                          IconButton(
                            icon: const Icon(Icons.attach_file, color: Colors.grey,),
                            onPressed: (){},
                          )
                        ],
                      ),
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none
                      )
                     ),
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Icon(Icons.mic),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: messageColor,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(14),
                  ),
                  onPressed: (){}, 
                ),
              ],
            ),
          ),  
        ],
      )
    );
  }
}