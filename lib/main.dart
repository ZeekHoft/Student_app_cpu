import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Coders_ID(),
  ));
}

class Coders_ID extends StatefulWidget {
  const Coders_ID({super.key});

  @override
  State<Coders_ID> createState() => _Coders_IDState();
}

class _Coders_IDState extends State<Coders_ID> {
  int student_year = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 216, 33),
      appBar: AppBar(
        titleTextStyle: TextStyle(fontStyle: FontStyle.italic, fontSize: 30.0),
        title: Text("CPU Student ID"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 45, 35, 154),
        elevation: 0.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                student_year += 1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Color.fromARGB(255, 45, 35, 154),
          ),
          SizedBox(width: 10.0),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                student_year -= 1;
              });
            },
            child: Icon(Icons.minimize),
            backgroundColor: Color.fromARGB(255, 45, 35, 154),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/cpu2.jpg'),
              radius: 40.0,
            ),
          ),
          Divider(
            height: 50.0,
            color: Color.fromARGB(255, 195, 175, 4),
          ),
          const Text(
            "Name:",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 4.0,
                fontSize: 14.0,
                fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 10.0,
          ),
          const Text(
            "Vince Justin",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 4.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Student Year:",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 4.0,
                fontSize: 14.0,
                fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "$student_year",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 4.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          const Text(
            "College:",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 4.0,
                fontSize: 14.0,
                fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 10.0,
          ),
          const Text(
            "Computer Studies",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 4.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          Divider(
            color: Color.fromARGB(255, 195, 175, 4),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.school, size: 50.0),
                onPressed: () async {
                  final url = "https://cpu.edu.ph/all-programs/";
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launch(url,
                        forceSafariVC: true,
                        forceWebView: true,
                        enableJavaScript: true);
                  }
                },
              ),
              SizedBox(width: 10.0),
              const Text(
                "Know all of our courses",
                style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 14.0,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 20.0),
            ],
          ),
          SizedBox(
            height: 0.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.bookmarks_rounded, size: 50.0),
                onPressed: () async {
                  final url = "https://cpu.instructure.com";
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launch(url,
                        forceSafariVC: true,
                        forceWebView: true,
                        enableJavaScript: true);
                  }
                },
              ),
              SizedBox(width: 10.0),
              const Text(
                "Log in to our canvas",
                style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 14.0,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 20.0),
            ],
          ),
          SizedBox(
            height: 0.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.person_4, size: 50.0),
                onPressed: () async {
                  final url =
                      "https://my.cpu.edu.ph/Membership/Login?ReturnUrl=%2f";
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launch(url,
                        forceSafariVC: true,
                        forceWebView: true,
                        enableJavaScript: true);
                  }
                },
              ),
              SizedBox(width: 10.0),
              const Text(
                "Student status",
                style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 14.0,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ]),
      ),
    );
  }
}
