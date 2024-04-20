import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:space_expo/star_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(200)),
              child: Image.asset(
                'assets/images/sun1.png',
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const AutoSizeText(
              maxLines:1,
              'Learn about a',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  maxLines:1,
                  'new star',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                AutoSizeText(
                  maxLines:1,
                  'everyday',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 120, 50, 206)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'All the 7 classification of sun',
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'based on their Radiation',
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),
            const SizedBox(
              height: 40,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              elevation: 5.0,
              minWidth: MediaQuery.of(context).size.width / 1.2,
              height: 60.0,
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StarScreen()));
              },
              child: const Text(
                'Enter the Space',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
