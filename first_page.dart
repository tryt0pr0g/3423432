import 'package:flutter/material.dart';
import 'package:prolijenie/Components/people_info.dart';
import 'package:prolijenie/Components/var.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              //color: Colors.black,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height * 0.045,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Поиск'),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              //color: Colors.amber,
              child: Row(
                children: <Widget>[
                  Container(
                    color: Colors.blue,
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Container(
                      //color: Colors.green,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ListView.builder(
                          itemCount: people.length,
                          itemBuilder: (BuildContext context, index) {
                            return Human(index: index);
                          })),
                  Container(
                    color: Colors.blue,
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
