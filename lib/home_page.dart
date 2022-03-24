import 'package:flashcard/testing_a_list.dart';
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
              onChanged: (value){},
              underline: SizedBox(),
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
               ),
          )
        ],
      ),
      body: card(),
      //Card add
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Card2(),),);},
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }
}
