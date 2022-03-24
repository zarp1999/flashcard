import 'package:flashcard/card.dart';
import 'package:flutter/material.dart';

class Card2 extends StatefulWidget {
  const Card2({ Key? key }) : super(key: key);

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  final GlobalKey<AnimatedListState> _key = GlobalKey();
  List _items=[
    card(),
    card(),
    card(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing animtedlist'),
      ),
      body: AnimatedList(
        key: _key,
        itemBuilder: (context, index, animation){
          return card();
       },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _addItem(),
      ),
    );
  }
  void _addItem(){
    int i = _items.length>0 ? _items.length : 0;
  }
}