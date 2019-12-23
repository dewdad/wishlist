import 'package:flutter/material.dart';
import 'package:wishlist/models/wish.dart';

class ListState extends State<List> {
  final _entries = <Wish>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();

          final index = i ~/ 2;
          
          if (index >= _entries.length) {
            _entries.add(new Wish("Test 1", "Desc!", false));
            _entries.add(new Wish("Test 2", "Desc!", false));
            _entries.add(new Wish("Test 3", "Desc!", false));
            _entries.add(new Wish("Test 4", "Desc!", false));
            _entries.add(new Wish("Test 5", "Desc!", false));
            _entries.add(new Wish("Test 6", "Desc!", false));
            _entries.add(new Wish("Test 7", "Desc!", false));
            _entries.add(new Wish("Test 8", "Desc!", false));
            _entries.add(new Wish("Test 9", "Desc!", false));
            _entries.add(new Wish("Test 10", "Desc!", false));
          }
          return _buildRow(_entries[index]);
        });
  }

  Widget _buildRow(Wish wish) {
    return ListTile(
      title: Text(
        wish.title,
        style: _biggerFont,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WISHLIST'),
      ),
      body: _buildSuggestions(),
    );
  }
}

class List extends StatefulWidget {
  @override
  ListState createState() => ListState();
}