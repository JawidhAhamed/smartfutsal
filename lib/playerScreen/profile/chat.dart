import 'package:flutter/material.dart';
import 'package:smartfutsal/playerScreen/constants.dart';

class Chat {
  final String username;
  final String time;
  final String details;

  Chat({required this.username, required this.time, required this.details});
}

class ChatBox extends StatefulWidget {
  @override
  _ChatFeedState createState() => _ChatFeedState();
}

class _ChatFeedState extends State<ChatBox> {
  List<Chat> activities = [
    Chat(username: 'Sarfan', time: '2 hours ago', details: 'Hi'),
    Chat(username: 'Asluf', time: '3 days ago', details: 'Hello'),
    Chat(username: 'AKD Sha', time: '1 week ago', details: 'Adei'),
    Chat(username: 'Sujah', time: '1 week ago', details: 'Ela'),
    Chat(username: 'Imran', time: '2 weeks ago', details: 'room ku pova poren'),
    Chat(username: 'Nasik', time: '3 weeks ago', details: 'Sign'),
    Chat(username: 'Hamthy', time: '1 week ago', details: 'Backend Done'),
    Chat(username: 'Maheez', time: '1 week ago', details: 'Adei Povoma'),
    Chat(username: 'Sameer', time: '1 week ago', details: 'Bus Booked'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 24, 24, 1),
        title: Text('Chat Feed'),
      ),
      body: ListView.builder(
        itemCount: activities.length,
        itemBuilder: (context, index) {
          return ChatItem(Chat: activities[index]);
        },
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final Chat;

  ChatItem({required this.Chat});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(255, 255, 255, 1),
      elevation: 4,
      margin: EdgeInsets.all(10.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(prfl),
          // You can load a user profile image here
          backgroundColor: Color.fromARGB(255, 230, 5, 5),
          child: Text(Chat.username[0]),
        ),
        title: Text(Chat.username),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Chat.details),
            Text(Chat.time, style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
