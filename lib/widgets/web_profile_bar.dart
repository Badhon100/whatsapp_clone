import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(color: dividerColor)
        ),
        color: webAppBarColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage("https://pps.whatsapp.net/v/t61.24694-24/315347001_9313980455294737_6238522585357268075_n.jpg?ccb=11-4&oh=01_AdRuimcLGQh2bNb6ULDFyWpqcqgA7fzs5_aHF8q4eJIHng&oe=64E5BF04"),
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.message, color: Colors.grey,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert, color: Colors.grey,)),
            ],
          )
        ],
      ),
    );
  }
}