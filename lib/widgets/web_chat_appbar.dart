import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.75,
      color: webAppBarColor,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage("https://starsunfolded.com/wp-content/uploads/2016/12/Hero-Alom-profile.jpg"),
                radius: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.01,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 9.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name", 
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Text("last seen 10 mins ago",
                      style: TextStyle(
                      fontSize: 14,
                    ),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.grey,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert, color: Colors.grey,))
            ],
          )
        ],
      ),
    );
  }
}