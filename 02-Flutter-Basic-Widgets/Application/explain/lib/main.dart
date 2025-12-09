//Skia

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

List<Widget> test = [CustomContainer(), CustomContainer(), CustomContainer()];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          title: Text(
            "TROSC",
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
         body: // ListView.builder(
        //   itemCount: 50,
        //   itemBuilder: (context,index) {
        //     return Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: CustomContainer(),
        //     );
        //   },
        // ),
        ListView(
          children: [
            CustomContainer(),
            CustomContainer(),
            CustomContainer(),
            Divider(color: Colors.amberAccent, thickness: 5,),
            CustomContainer(),
          ],
        )
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: ListTile(
        title: Text("Task 1"),
        subtitle: Text("Advanec Task"),
        leading: Icon(Icons.add),
        trailing: Icon(Icons.delete),
      ),
    );
  }
}
