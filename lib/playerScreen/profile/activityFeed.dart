import 'package:flutter/material.dart';
import 'package:smartfutsal/playerScreen/constants.dart';

class Activity {
  final String username;
  final String time;
  final String details;

  Activity({required this.username, required this.time, required this.details});
}

class ActivityFeed extends StatefulWidget {
  @override
  _ActivityFeedState createState() => _ActivityFeedState();
}

class _ActivityFeedState extends State<ActivityFeed> {
  List<Activity> activities = [
    Activity(
        username: 'Manchester United',
        time: '2 hours ago',
        details: 'Booked Manchester United for 1 hour'),
    Activity(
        username: 'Al- Nassr',
        time: '3 days ago',
        details: 'Booked Al- Nassr for 2 hours'),
    Activity(
        username: 'Real Madrid',
        time: '5 days ago',
        details: 'Booked Real Madrid for 1.5 hours'),
    Activity(
        username: 'Liver Pool',
        time: '2 week ago',
        details: 'Booked Liver Pool for 5 hours'),
    Activity(
        username: 'FC Bayern',
        time: '3 week ago',
        details: 'Booked FC Bayern for 1 hour'),
    Activity(
        username: 'Manchester City',
        time: '3 week ago',
        details: 'Booked Manchester City for 3 hours'),
    Activity(
        username: 'Arsenal',
        time: '1 month ago',
        details: 'Booked Arsenal for 2 hours'),
    Activity(
        username: 'Barcelona',
        time: '2 months ago',
        details: 'Booked Barcelona for 4 hours'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 24, 24, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 24, 24, 1),
        title: Text('Activity Feed'),
      ),
      body: ListView.builder(
        itemCount: activities.length,
        itemBuilder: (context, index) {
          return ActivityItem(activity: activities[index]);
        },
      ),
    );
  }
}

class ActivityItem extends StatelessWidget {
  final Activity activity;

  ActivityItem({required this.activity});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(255, 255, 255, 1),
      elevation: 4,
      margin: EdgeInsets.all(10.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(stad1),
          // You can load a user profile image here
          backgroundColor: Color.fromARGB(255, 230, 5, 5),
          child: Text(activity.username[0]),
        ),
        title: Text(activity.username),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(activity.details),
            Text(activity.time, style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
