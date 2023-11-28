import 'package:chaleno/chaleno.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? title;
  String? subscribeCount;
  String? img;
  final baseUrl = 'https://github.com';

  Future<void> scrapData() async {
    final response = await Chaleno().load('$baseUrl/arrahmanbd');
    title = response?.getElementsByClassName('vcard-fullname').first.text;
    subscribeCount = response?.querySelector('.vcard-username').text;
    img = response?.querySelector('.avatar-user').src;

    setState(() {});
  }

  @override
  void initState() {
    scrapData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Github Scraping',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                color: Colors.black,
                child: Image.network(
                  img.toString().trim(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              '${title!.trim()}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '@${subscribeCount!.trim()}',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Follow',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            Expanded(
              child: Container(
                color: Colors.black,
                padding: const EdgeInsets.all(20),
                width: MediaQuery.sizeOf(context).width * .8,
                child: Column(
                  children: [
                    Text(
                      "#Data Grabbing from Github:\nName: ${title!.trim()}\nUsername: ${subscribeCount!.trim()}\nAvater: ${img!.trim()} ",
                      style: const TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
