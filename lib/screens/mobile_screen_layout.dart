import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("Whatsapp",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey
            ),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.grey)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert, color: Colors.grey))
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold
            ),
            tabs: [
              Text("CHATS"),
              Text("STATUS"),
              Text("CALLS"),
            ],
          ),
        ),
        body: const ContactsList(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: tabColor,
          onPressed: (){},
          child: const Icon(Icons.comment, color: Colors.white,),        
        ),
      )
    );
  }
}