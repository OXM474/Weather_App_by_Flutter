import 'package:flutter/material.dart';
import 'package:weather_app_by_flutter/pages/city.dart';
import 'package:weather_app_by_flutter/pages/location.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController city = TextEditingController();
  String? cityname;
  Widget? body;

  @override
  void initState() {
    body = const Location();
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: GestureDetector(
          child: const Icon(Icons.location_on_outlined),
          onTap: () {
            setState(() {
              body = const Location();
            });
          },
        ),
        centerTitle: true,
        title: const Text('Weather'),
        actions: [
          GestureDetector(
            child: const Icon(Icons.search),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Search for location'),
                      content: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: TextField(
                              controller: city,
                              decoration: const InputDecoration(
                                  labelText: 'City Name',
                                  hintText: 'Enter the City Name',
                                  prefixIcon: Icon(Icons.location_city)),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  cityname = city.text.toString();
                                  body = City(cityname: cityname!);
                                });
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(Icons.search))
                        ],
                      ),
                    );
                  });
            },
          ),
          const SizedBox(
            width: 23,
          )
        ],
      ),
      body:  const Location(),
    );
  }
}
