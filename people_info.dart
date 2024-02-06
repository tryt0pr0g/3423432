import 'package:flutter/material.dart';
import 'package:prolijenie/Components/var.dart';

class Human extends StatelessWidget {
  Human({super.key, required this.index});

  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(bottom: 24, top: 8),
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.2,
            child: Image.network(url),
            //color: Colors.amber,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.45,
            //color: Colors.pink,
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.045,
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: EdgeInsets.all(4),
                  child: Text(
                    "${people[index].name}",
                    style: const TextStyle(fontSize: 30),
                  ),
                  //color: Colors.purple,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.023,
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: EdgeInsets.all(4),
                  child: Text(
                    "${people[index].phone}",
                    style: const TextStyle(fontSize: 20),
                  ),
                  //color: Colors.purple,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.023,
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: EdgeInsets.all(4),
                  child: Text(
                    "${people[index].birthday}",
                    style: const TextStyle(fontSize: 20),
                  ),
                  //color: Colors.purple,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            //color: Colors.amber,
            ),
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.1,
            margin: EdgeInsets.all(8),
            child: IconButton(
              onPressed: () {favorite.add(people[index],
              );
              print(favorite);
              },
              icon: const Icon(
                Icons.favorite,
                color: Colors.pink,
                )
                )
          )
        ],
      ),
    );
  }
}
