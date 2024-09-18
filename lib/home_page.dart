import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: const Text(
            'Quickart',
            style: TextStyle(
              color: Color.fromARGB(255, 56, 71, 78),
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0), // Add padding here
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined, size: 30),
              ),
            ),
          ],
        ),
        body: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  const CircleAvatar(
                      radius: 25,
                      backgroundColor: Color.fromARGB(255, 94, 196, 1),
                      foregroundColor: Color.fromARGB(255, 255, 255, 255),
                      child: Icon(
                        Icons.location_pin,
                      )),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your location',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 56, 71, 78),
                        ),
                      ),
                      Text(
                        'Your location',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color.fromARGB(255, 56, 71, 78),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.navigate_next),
                    iconSize: 50,
                    color: const Color.fromARGB(255, 56, 71, 78),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search Anything',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Flexible to avoid overflow
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      _buildCategoryCard(
                          'Fruits & Vegetables', 'images/image1.png'),
                      _buildCategoryCard('Breakfast', 'images/image2.png'),
                      _buildCategoryCard('Beverages', 'images/image3.png'),
                      _buildCategoryCard('Meat & Fish', 'images/image4.png'),
                      _buildCategoryCard('Snacks', 'images/image5.png'),
                      _buildCategoryCard('Dairy & Eggs', 'images/image6.png'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

Widget _buildCategoryCard(String title, String imagepath) {
  return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagepath,
                width: 100, // Limit image size to prevent overflow
                height: 100,
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ));
}
