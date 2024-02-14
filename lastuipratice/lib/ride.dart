// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Ridehistory extends StatefulWidget {
  const Ridehistory({super.key});

  @override
  State<Ridehistory> createState() => _RidehistoryState();
}

class _RidehistoryState extends State<Ridehistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 4, color: Colors.grey.shade400)
                        ]),
                    child: const Icon(
                      Icons.chevron_left,
                      size: 30,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  const Text(
                    'Ride History',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Reusablecolumn(
                title: 'Gorzow',
                sub: 'Berlin Airport',
                img: 'assets/images/bus.png',
                price: '\$45.99',
                loca: 'German'),
            const SizedBox(
              height: 10,
            ),
            Reusablecolumn(
                title: 'Gorzow',
                sub: 'Berlin Airport',
                img: 'assets/images/bus.png',
                price: '\$45.99',
                loca: 'German'),
            const SizedBox(
              height: 10,
            ),
            Reusablecolumn(
                title: 'Gorzow',
                sub: 'Berlin Airport',
                img: 'assets/images/bus.png',
                price: '\$45.99',
                loca: 'German'),
          ],
        ),
      ),
    );
  }
}

class Reusablecolumn extends StatelessWidget {
  String title;
  String sub;
  String img;
  String price;
  String loca;
  // ignore: use_key_in_widget_constructors
  Reusablecolumn({
    required this.title,
    required this.sub,
    required this.img,
    required this.price,
    required this.loca,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 170,
        width: 450,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.shade300, width: 1.0),
        ),
        child: Stack(
          children: [
            Container(
              height: 170,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                  borderRadius: BorderRadius.circular(15)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 70),
              child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(img)))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 95, top: 10),
              child: Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 17),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Text(
                    sub,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 17),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 260, top: 20),
              child: Column(
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      Text(
                        loca,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 17),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
