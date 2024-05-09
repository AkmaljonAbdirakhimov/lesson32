import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  late final TapGestureRecognizer _tapGestureRecognizer;
  String phoneNumber = "";

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = () {
      print("Salom");
    };
  }

  Widget productItem() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: const FittedBox(
        child: Text(
          "Telefon",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("32-Dars"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.blue,
                    child: const Text("Salom"),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.red,
                    child: const Text("Salom"),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.orange,
                    child: const Text("Salom"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1000,
            ),
            Row(
              children: [
                productItem(),
                SizedBox(width: 10),
                productItem(),
                SizedBox(width: 10),
                productItem(),
                SizedBox(width: 10),
                productItem(),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            const Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Salom"),
              ),
            ),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                const Chip(
                  avatar: CircleAvatar(),
                  label: Text("Olma"),
                ),
                const Chip(
                  avatar: CircleAvatar(),
                  label: Text("Behi"),
                ),
                const Chip(
                  avatar: CircleAvatar(),
                  label: Text("Qulupnay"),
                ),
                const Chip(
                  avatar: CircleAvatar(),
                  label: Text("Kivi"),
                ),
                const Chip(
                  avatar: CircleAvatar(),
                  label: Text("Olcha"),
                ),
                const Chip(
                  avatar: CircleAvatar(),
                  label: Text("Shaftoli"),
                ),
                Chip(
                  deleteIcon: const Icon(Icons.add),
                  onDeleted: () {
                    print("Bosildi");
                  },
                  avatar: const CircleAvatar(),
                  label: Text("Olma"),
                ),
                const Chip(
                  avatar: CircleAvatar(),
                  label: Text("Olma"),
                ),
              ],
            ),
            Wrap(
              alignment: WrapAlignment.start,
              spacing: 20,
              runSpacing: 20,
              children: [
                productItem(),
                productItem(),
                productItem(),
                productItem(),
                productItem(),
                productItem(),
                productItem(),
                productItem(),
                productItem(),
                productItem(),
                productItem(),
                productItem(),
              ],
            ),
            // const Row(
            //   children: [
            //     Flexible(
            //       child: Text(
            //         "Et ullamco voluptate elit in officia ut deserunt.Et ipsum incididunt et ad velit mollit consequat in nulla laborum tempor mollit in pariatur.Velit adipisicing nisi nisi consectetur dolor.Esse cupidatat enim reprehenderit esse consectetur labore veniam.",
            //       ),
            //     )
            //   ],
            // ),
            // const SizedBox(height: 50),
            // Expanded(
            //   child: RichText(
            //     text: TextSpan(
            //       style: const TextStyle(
            //         color: Colors.black,
            //       ),
            //       children: [
            //         const TextSpan(
            //           text:
            //               "Et ullamco voluptate elit in officia ut deserunt.Et ipsum incididunt et ad velit mollit consequat in nulla laborum tempor mollit in pariatur.",
            //         ),
            //         TextSpan(
            //           onEnter: (event) {
            //             print(event);
            //           },
            //           recognizer: _tapGestureRecognizer,
            //           style: const TextStyle(
            //             color: Colors.red,
            //             fontWeight: FontWeight.bold,
            //           ),
            //           text: "Velit adipisicing nisi nisi consectetur dolor.",
            //         ),
            //         const TextSpan(
            //           text:
            //               "Et ipsum incididunt et ad velit mollit consequat in nulla laborum tempor mollit in pariatur.",
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
