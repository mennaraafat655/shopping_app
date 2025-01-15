import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> images = [
    'assets/imgcard1.jpeg',
    'assets/imgcard2.jpeg',
    'assets/imgcard3.jpeg',
    'assets/imgcard4.jpeg',
    'assets/imgcard5.jpeg',
    'assets/imgcard6.jpeg',
    'assets/imgcard7.jpeg',
    'assets/imgcard8.jpeg',
  ]; // list of card images
  final List<String> imagesH = [
    'assets/imghot1.jpeg',
    'assets/imghot2.jpeg',
    'assets/imghot3.jpeg',
    'assets/imghot4.jpeg',
    'assets/imghot5.jpeg',
  ]; // list of hot offers images

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
            child: Text(
          'BazaarVibe', //app name
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: 'Lora'), //google font Lora
        )),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Our Products',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lora'),
            ),
            SizedBox(height: 10),
            Container(
              height: 300,
              child: PageView(
                children: [
                  Image.asset(
                    'assets/img1.jpeg',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                  Image.asset(
                    'assets/img2.jpeg',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                  Image.asset(
                    'assets/img3.jpeg',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.asset(
                          images[index], //list of card images
                          width: 120,
                          height: 120,
                        ),
                        Row(children: [
                          Text('Product ${index + 1}'), // product + his number
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 55,
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.blue,
                              ),
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Item added to the cart'),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                              },
                            ),
                          ),
                        ]),
                      ],
                    ),
                  );
                },
              ),
            ),
            Text(
              'Hot Offers',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lora'),
            ),
            SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            imagesH[index], //list of hot offers images
                            width: 120,
                            height: 120,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Center(
                              child: Text(
                                  'Hot Offer ${index + 1}')), //product + his number
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
