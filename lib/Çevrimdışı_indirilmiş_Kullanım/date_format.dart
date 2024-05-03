import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Date List View',
      home: DateListView(),
    );
  }
}

class DateListView extends StatelessWidget {
  // Sample data (replace with your actual data)
  final List<Map<String, dynamic>> items = [
    {"date": "2024-05-01", "item": "Item 1"},
    {"date": "2024-05-01", "item": "Item 2"},
    {"date": "2024-04-30", "item": "Item 3"},
    {"date": "2024-04-30", "item": "Item 4"},
    {"date": "2024-04-29", "item": "Item 5"}
  ];

   DateListView({super.key});

  @override
  Widget build(BuildContext context) {
    // Sort items by date
    items.sort((a, b) => a['date'].compareTo(b['date']));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Date List View'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          // Check if it's the first item with this date to add a date header
          if (index == 0 || items[index]['date'] != items[index - 1]['date']) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    items[index]['date'],
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  title: Text(items[index]['item']),
                ),
              ],
            );
          } else {
            // Just show the item
            return ListTile(
              title: Text(items[index]['item']),
            );
          }
        },
      ),
    );
  }
}
