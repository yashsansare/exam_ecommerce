import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exam extends StatefulWidget {
  const Exam({Key? key}) : super(key: key);

  @override
  State<Exam> createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  List image = [
    "assets/images/orange.png",
    "assets/images/apple.png",
    "assets/images/kiwi.png",
    "assets/images/banana.png",
    "assets/images/strawberry.png",
    "assets/images/watermelon.png",
    "assets/images/broccoli.png",
    "assets/images/peppers.png",
    "assets/images/carrot.png",
  ];
  List fruitsname=[
    "orange",
    "apple",
    "kiwi",
    "banana",
    "strawberry",
    "watermelon",
    "broccoli",
    "peppers",
    "carrot",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Getx Concept",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: IconButton(
                        onPressed: () {
                       
                        },
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.green,
                        ),
                      )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Fruits",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Vegetables",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffb2babb)),
                    ),
                  ],
                ),
              ),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                children: List.generate(
                  9,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              height:120,
                              width: 120,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(image[index]),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("${fruitsname[index]}"),
                            
                          ],
                        ),

                      ),

                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
