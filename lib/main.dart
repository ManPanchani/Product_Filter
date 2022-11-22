import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Products_Filter(),
    ),
  );
}

class Products_Filter extends StatefulWidget {
  const Products_Filter({Key? key}) : super(key: key);

  @override
  State<Products_Filter> createState() => _Products_FilterState();
}

double SliderValue = 1500;
double val = 80000;

List<Map> producat = [
  {
    'id': 1,
    'name': "Watch",
    'price': 2000,
    'category': 3.5,
  },
  {
    'id': 2,
    'name': "T-Shirt",
    'price': 1500,
    'category': 3,
  },
  {
    'id': 3,
    'name': "Jeans",
    'price': 3000,
    'category': 4.5,
  },
  {
    'id': 4,
    'name': "phone",
    'price': 30000,
    'category': 4.8,
  },
  {
    'id': 5,
    'name': "T.V",
    'price': 60000,
    'category': 4,
  },
  {
    'id': 6,
    'name': "Leptop",
    'price': 45000,
    'category': 4.5,
  },
  {
    'id': 7,
    'name': "Fridge",
    'price': 55000,
    'category': 4.5,
  },
  {
    'id': 8,
    'name': "Tu-wil",
    'price': 75000,
    'category': 3.5,
  },
  {
    'id': 9,
    'name': "Bikes",
    'price': 80000,
    'category': 4.1,
  },
  {
    'id': 10,
    'name': "Airpode",
    'price': 4500,
    'category': 4.9,
  },
];

class _Products_FilterState extends State<Products_Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          "Product Filter",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          const Icon(Icons.apps_sharp),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Slider(
                value: SliderValue,
                min: 1500,
                max: 80000,
                divisions: 100,
                onChanged: (val) {
                  setState(() {
                    SliderValue = val;
                  });
                }),
            Text(
              "All Products < Rs. ${(SliderValue).toInt()}",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            ...producat.map(
              (e) {
                return (e['price'] <= SliderValue)
                    ? Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          height: 20,
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${e['id']}",
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "${e['name']}",
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "${e['price']}",
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "${e['category']}",
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container();
              },
            ).toList(),
          ],
        ),
      ),
    );
  }
}
