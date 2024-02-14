// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:lastuipratice/ride.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Beat seat',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            color: Colors.red.shade100,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green),
                    ),
                    const Text(
                      'Available',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 18),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey),
                    ),
                    const Text(
                      'Unavailable',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 18),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.red),
                    ),
                    const Text(
                      'Selected',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 18),
                    ),
                  ]),
            )),
        const SizedBox(
          height: 50,
        ),
        Stack(children: [
          Stack(children: [
            Container(
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/car.png'),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 170,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ReusableRow(color: Colors.grey),
                        ReusableRow(color: Colors.red),
                        ReusableRow(color: Colors.red),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ReusableRow(color: Colors.red),
                      ReusableRow(color: Colors.green),
                      ReusableRow(color: Colors.green),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ReusableRow(color: Colors.green),
                      ReusableRow(color: Colors.green),
                      ReusableRow(color: Colors.red),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ]),
        const SizedBox(
          height: 100,
        ),
        CustomButton1(
          title: 'Select Seat',
        ),
      ]),
    ));
  }
}

class ReusableRow extends StatelessWidget {
  Color color;
  ReusableRow({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 5),
      child: Container(
        height: 45,
        width: 43,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
    );
  }
}

class CustomButton1 extends StatelessWidget {
  String title;

  CustomButton1({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Ridehistory()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.red),
          height: 50,
          child: Center(
              child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 20,
                color: Colors.white),
          )),
        ),
      ),
    );
  }
}
