import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/events_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conférence 2026"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/logo.svg',
              colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
            ),
              const Text(
              "Conférence 2026",
              style: TextStyle(
                fontSize: 42,
                fontFamily: 'Poppins'
              ),
              ),
              const Text("Salon virtuel de l'informatique",
              style: TextStyle(
                fontSize: 24
              ),
              textAlign: TextAlign.center,
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              ElevatedButton.icon(
                style: ButtonStyle(
                  padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: WidgetStatePropertyAll(Colors.green)
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => EventPage()
                      )
                    );
                },
                label: Text("Afficher le planning",
                  style:TextStyle(
                    fontSize: 20
                    ),
                  ),
                  icon: Icon(Icons.calendar_month),
                )
          ],
        ),
      ),
    );
  }
}