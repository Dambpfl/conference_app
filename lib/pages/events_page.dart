import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {

  final events = [
    {
      "speaker": "Github",
      "date": "13h à 13h30",
      "subject": "Qu'est-ce que c'est ?",
      "avatar": "github"
    },
    {
      "speaker": "Symfony",
      "date": "17h à 18h",
      "subject": "Le framework PHP",
      "avatar": "symfony"
    },
    {
      "speaker": "Tailwind",
      "date": "18h à 18h30",
      "subject": "La bibliothèque CSS",
      "avatar": "tailwind"
    }
  ];

    @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) {
            final event = events[index];
            final avatar = event["avatar"];
            final speaker = event["speaker"];
            final date = event["date"];
            final subject = event["subject"];

            return Card(
            child: ListTile(
              leading: Image.asset("assets/images/$avatar.png", width: 50, height: 50),
              title: Text('$speaker ($date)'),
              subtitle: Text('$subject'),
              trailing: Icon(Icons.info),
            ),
          );
          },
        ),
      );
  }
}