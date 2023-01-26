import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int level = 0;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Ninja Id Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[850],
        onPressed: (){
          setState(() {
            level++;
          });
        },
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 20.0,
          )
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/ninja.jpg'),
                  radius: 40.0,
                ),
              ),
            Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
              const Text(
              'name',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
              const SizedBox(height: 10.0),
              Text(
              'Ankur',
              style: TextStyle(
                  color: Colors.green[800],
                  letterSpacing: 2.0,
                  fontSize: 28.0
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'Current Ninja Level',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              '$level',
              style: TextStyle(
                  color: Colors.green[800],
                  letterSpacing: 2.0,
                  fontSize: 28.0
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400]
                ),
                const SizedBox(width: 15.0),
                Text(
                  'ank031100@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15.0,
                    letterSpacing: 1.0

                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

