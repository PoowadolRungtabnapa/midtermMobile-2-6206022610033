import 'package:flutter/material.dart';
import 'Page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'FITM'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _Name = TextEditingController();
  TextEditingController _Surname = TextEditingController();
  TextEditingController _Email = TextEditingController();
  TextEditingController _Phone = TextEditingController();
  TextEditingController _Grade = TextEditingController();
  TextEditingController _Graduate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FITM'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(height: 1),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    controller: _Name,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Your Name'),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 1),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    controller: _Surname,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Your Surname'),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 1),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    controller: _Email,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Your Email'),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 1),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    controller: _Phone,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Your Phone'),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 1),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    controller: _Grade,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Your Grade'),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 1),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    controller: _Graduate,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Your Graduate'),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Page1(
                            Name: _Name.text,
                            Surname: _Surname.text,
                            Email: _Email.text,
                            Phone: _Phone.text,
                            Grade: _Grade.text,
                            Graduate: _Graduate.text,
                          ),
                        ),
                      );
                    },
                    child: Text('Next Page'))
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
