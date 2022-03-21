import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class card extends StatelessWidget {
  const card({
    Key? key,
  }) : super(key: key);

  // AlertDialog
  Future<String?> createAlertDialog(BuildContext context) {
    TextEditingController customController = TextEditingController();

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Үгээ оруулна уу'),
            content: TextField(
              controller: customController,
            ),
            actions: [
              MaterialButton(
                elevation: 5.0,
                child: Text('Хадгалах'),
                onPressed: () {
                  Navigator.of(context).pop(customController.text.toString());
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.only(
        top: 96.0,
        bottom: 136.0,
        left: 38.0,
        right: 38.0,
      ),
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        speed: 1000,
        front: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(0xFFC41A3B),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Text Edit icon
                    IconButton(
                        onPressed: () {
                          createAlertDialog(context).then((onValue) {
                            SnackBar mySnackbar =
                                SnackBar(content: Text('$onValue'));
                            Scaffold.of(context).showSnackBar(mySnackbar);
                          });
                        },
                        icon: Icon(Icons.create)),
                    //Card delete icon
                    Icon(Icons.close),
                  ],
                ),
              ),
              Container(
                child: Text(
                  'Шинэ үг',
                  style: TextStyle(fontSize: 32.0),
                ),
              ),
            ],
          ),
        ),
        back: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(0xFFC41A3B),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.create),
                    Icon(Icons.close),
                  ],
                ),
              ),
              Container(
                child: const Text(
                  'Утга',
                  style: TextStyle(fontSize: 32.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
