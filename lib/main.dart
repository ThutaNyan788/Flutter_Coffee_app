import 'package:coffee_card/home.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(
    home: Home()
  ));
}


class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("SandBox"),
        backgroundColor: Colors.grey,
      ),
      body:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           Container(
            height: 100,
            color:Colors.red[200],
            child: const Text("Div1"),
          ),
           Container(
            height: 200,
            color:Colors.orange[200],
            child: const Text("Div2"),
          ),
           Container(
            height: 300,
            color:Colors.purple[200],
            child: const Text("Div3"),
          ),
           Container(
            height: 400,
            color:Colors.blue[200],
            child: const Text("Div4"),
          )
        ],
      ),
    );
  }
}