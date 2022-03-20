import 'package:flashcard/language.dart';
import 'package:flutter/material.dart';

import 'card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "Flip Card";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flashcard'),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DropdownButton(
                icon: Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                items: Language.languageList()
                    .map<DropdownMenuItem<Language>>(
                      (lang) => DropdownMenuItem(
                        value: lang,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(lang.name),
                            Text(lang.flag),
                          ],
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (lang) {}),
          )
        ],
      ),
      body: card(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }
}
