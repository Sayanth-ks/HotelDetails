import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        home: hotelDetails(),
        debugShowCheckedModeBanner: false,
      )));
}

class hotelDetails extends StatelessWidget {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              //mainAxisAlignment: MainAxisAlignment.start,
                alignment: Alignment.topCenter,
                //height: 400,
                child: Image.asset(
                  "lib/assets/images/hotel.jpg",
                  fit: BoxFit.contain,
                )),
            const Padding(
              padding: EdgeInsets.only(top: 150, left: 20),
              child: Text(
                "MGM Grand,US \nLas Vegas",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 220, left: 20),
              child: Container(
                child: Text(
                  " 8.4/3,583 reviews ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(70),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 210, left: 340),
              child: IconButton(
                  color: Colors.white,
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_rounded)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280, left: 20),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.greenAccent,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.greenAccent,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.greenAccent,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.greenAccent,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.blue,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 310, left: 20),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        size: 15,
                        color: Colors.grey,
                      ),
                      Text(
                        " Las Vegas Blvd,US - 4.7 KM to center",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 285, left: 270),
              child: Column(
                children: [
                  const Text(
                    "\£160.89",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: const [
                      Text(
                        "    /per night",
                        style:
                        TextStyle(fontSize: 16, color: Colors.greenAccent),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350, left: 28),
              child: ElevatedButton(
                onPressed: () {},
                child:  Text(
                  "Book Now",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.greenAccent,
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 120)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 430, left: 15),
              child: Text(
                "MGM Grand",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 470, left: 15),
                child: Text(
                  "On the South end of the Strip across from the Tropicana, this colossal, emerald-colored casino resort is fronted by a signature 45-foot bronze lion.The modern rooms have sleek furnishings, glass-topped desks and marble bathrooms; suites add living areas and Roman bathtubs. Some wellness-themed rooms feature air purification systems, aromatherapy diffusers, and access to a special lounge.", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.search_sharp), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}