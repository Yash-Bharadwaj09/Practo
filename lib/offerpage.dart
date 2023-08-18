import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practo/form_tabbar2.dart';
import 'package:practo/number.dart';
import 'package:practo/searchpage.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({super.key});

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  List<String> items = <String>[
    'Bengaluru',
    'New Delhi',
    'Noida',
    'Hyderabad',
    'Gurugram',
  ];
  String dropdownValue = 'Noida';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => MyHomePage())
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.density_medium_sharp,
                                    size: 16,
                                    weight: 10,
                                  )
                              ),
                            ],
                          ),
                        ),

                         Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.pink.shade100,
                                    borderRadius: BorderRadius.circular(7)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: RichText(
                                        text:  const TextSpan(
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                          text: "Explore",
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "PLUS",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                                fontSize: 13,
                                              )
                                            )
                                          ]
                                        )
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                IconButton(
                                    onPressed: (){
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => MyForm2())
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.file_open,
                                      color: Colors.black,
                                      size: 16,
                                    )
                                )
                              ],
                            )
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          widthFactor: 1.25,
                          child: DropdownButton<String>(
                              icon: Icon(
                                Icons.location_on_outlined,
                                size: 12,
                                color: Colors.blue.shade900,
                              ),
                              value: dropdownValue,
                              items: items.map<DropdownMenuItem<String>>(
                                  (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }
                              ).toList(),
                              onChanged: (String? newValue){
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                              }
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: CupertinoColors.systemGrey4,
                      thickness: 1.0,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      height: 180,
                      width: 340,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                    'assets/logo.svg',
                                    height: 70,
                                    width: 70,
                                    color: Colors.white,
                                ),
                                    const Align(
                                      widthFactor: 1.30,
                                      child: Text(
                                        'You are in Safe Hands',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ),
                                const Align(
                                  widthFactor: 1.30,
                                  child: Text(
                                    'Choose the experts in end to',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                                const Align(
                                  widthFactor: 1.30,
                                  child: Text(
                                    'end surgical care',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ),
                              const SizedBox(
                                height: 12,
                              ),
                              Align(
                                widthFactor: 1.25,
                                child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                        backgroundColor: Colors.blue.shade900,
                                        foregroundColor: Colors.black54,
                                        side: const BorderSide(
                                          color: Colors.white,
                                        )
                                      ),
                                      onPressed: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => SearchPage())
                                        );
                                      },
                                      child: const Text(
                                        'Know More',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400
                                        ),
                                      )
                                  ),
                              )
                              ],
                            ),
                          ),
                          Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset("assets/banner.svg",
                                    height: 180,
                                    allowDrawingOutsideViewBox: true,
                                  )
                                ],
                              )
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15
                    ),
                      const Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            widthFactor: 1.25,
                            child: Text(
                              'Our Offerings',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12
                      ),
                      Row(
                        children: [
                          Align(
                            widthFactor: 1.25,
                            child: Container(
                              height: 190,
                              width: 160,
                              decoration:  BoxDecoration(
                                color: CupertinoColors.systemGrey6,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 120,
                                      width: 160,
                                      decoration: const BoxDecoration(
                                        color: CupertinoColors.systemGrey,
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
                                      ),
                                      child: SvgPicture.asset("assets/doctor.svg",)
                                    ),
                                    const Text('Find Doctors Near You',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15
                                    )
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                            'Confirmed appointments',
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10
                                            ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 190,
                            width: 160,
                            decoration:  BoxDecoration(
                                color: CupertinoColors.systemGrey6,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  Container(
                                      height: 120,
                                      width: 160,
                                      decoration: const BoxDecoration(
                                          color: CupertinoColors.systemGrey,
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
                                      ),
                                      child: SvgPicture.asset("assets/doctor.svg",)
                                  ),
                                  const Text('Instant Video Consultation',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15
                                      )
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        'Connect within 60 seconds',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 110,
                          decoration:  BoxDecoration(
                              color: CupertinoColors.systemGrey6,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                    height: 60,
                                    width: 110,
                                    decoration: const BoxDecoration(
                                        color: CupertinoColors.systemGrey,
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
                                    ),
                                    child: SvgPicture.asset("assets/medicine.svg",color: Colors.black,)
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Medicines',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 100,
                          width: 110,
                          decoration:  BoxDecoration(
                              color: CupertinoColors.systemGrey6,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                    height: 60,
                                    width: 110,
                                    decoration: const BoxDecoration(
                                        color: CupertinoColors.systemGrey,
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
                                    ),
                                    child: SvgPicture.asset("assets/labtest.svg",color: Colors.black,)
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Lab Tests',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 100,
                          width: 110,
                          decoration:  BoxDecoration(
                              color: CupertinoColors.systemGrey6,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Container(
                                    height: 60,
                                    width: 110,
                                    decoration: const BoxDecoration(
                                        color: CupertinoColors.systemGrey,
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))
                                    ),
                                    child: SvgPicture.asset("assets/surgery.svg",color: Colors.black,)
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Surgeries',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
