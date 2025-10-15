import 'package:flutter/material.dart';
import 'package:orthodox/drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(Orthodox());
}

class Orthodox extends StatefulWidget {
  const Orthodox({super.key});

  @override
  State<Orthodox> createState() => _OrthodoxState();
}

class _OrthodoxState extends State<Orthodox> {
  String text = '';
  final _controller = TextEditingController();
  bool isThems = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDatas();
  }

  Future<void> setDatas() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    SharedPreferences prefsText = await SharedPreferences.getInstance();

    prefs.setBool('isDartMode', isThems);
    prefsText.setString('str', text);
  }

  Future<void> getDatas() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    SharedPreferences prefsText = await SharedPreferences.getInstance();

    bool? them = prefs.getBool('isDartMode') ?? false;
    String? getText = prefsText.getString('str') ?? ' ';

    print(them);
    print(getText);

    setState(() {
      isThems = them;
      text = getText;
    });
  }

  var _currentIndex = 1;
  void activity(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> lists = [
      Container(child: Text(text.isEmpty ? 'No text entered' : text)),
      Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: 'User name',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _controller.clear(); // Clear text field
                      });
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Btn'),
              onPressed: () {
                setState(() {
                  text = _controller.text;
                });
                setDatas();
              },
            ),
          ],
        ),
      ),
      Container(child: Text('dfgata')),
    ];
    return MaterialApp(
      theme: isThems ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Switch(
                  value: isThems,
                  onChanged: (value) {
                    setState(() {
                      isThems = value;
                    });
                    setDatas();
                  },
                ),
              ),
            ),
          ],

          backgroundColor: Colors.deepOrange,
        ),
        drawer: Drawers(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: activity,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.airline_seat_legroom_normal),
              label: 'mezmur',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessible_forward_rounded),
              label: 'mezmgfhgur',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms_outlined),
              label: 'mezmurghg',
            ),
          ],
        ),
        body: lists[_currentIndex],
      ),
    );
  }
}
