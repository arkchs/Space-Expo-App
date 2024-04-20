import 'package:flutter/material.dart';

class StarInfoScreen extends StatefulWidget {
  const StarInfoScreen({
    Key? key,
    required this.image,
    required this.name,
    required this.about,
  }) : super(key: key);

  final String image;
  final String name;
  final String about;

  @override
  State<StarInfoScreen> createState() => _StarInfoScreenState();
}

class _StarInfoScreenState extends State<StarInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(widget.name),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.heart_broken_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    widget.image,
                    height: 300,
                    width: 300,
                    fit: BoxFit.fill,
                  )),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Description',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                child: Text(
                  widget.about,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
