import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
            'Find & Book',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white70,
            size: 18,
          ),
          onPressed: (){},
        ),
        actions: [
          const Column(
            children: [
              Text(
                textAlign: TextAlign.right,
                  'LOCATION',
                style: TextStyle(
                color: Colors.white,
                fontSize: 12
                ),
              ),
            ],
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.location_on_outlined,
                size: 14,
                color: Colors.white70,
              )
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: CupertinoColors.systemGrey6,
              height: 80,
              width: 430,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                        decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white60,
                            width: 1,
                            style: BorderStyle.solid
                          )
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          )
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Colors.white70
                          )
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 12,
                          color: Colors.black38,
                        ),
                        hintText: 'Search doctors, specialities, clinics, hospitals ',
                        hintStyle: const TextStyle(
                          fontSize: 13,
                          color: Colors.black38
                        )
                      ) ,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 16
            ),
             Row(
               mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  widthFactor: 1.20,
                  child: Column(
                    children: [
                      const Text(
                        'Search by Health concern',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey,
                        child: SvgPicture.asset('assets/doctor.svg',height: 40,width: 40)
                      ),
                       InkWell(
                        onTap: (){},
                        child: const Text('Bone surgery',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 14
                      ),
                      CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey,
                          child: SvgPicture.asset('assets/doctor.svg',height: 40,width: 40)
                      ),
                       InkWell(
                        onTap: (){},
                        child: const Text('Cold & Cough',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(''),
                      const SizedBox(
                        height: 14
                      ),
                      CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey,
                          child: SvgPicture.asset('assets/doctor.svg',height: 40,width: 40)
                      ),
                       InkWell(
                         onTap: (){},
                        child: const Text('Hair Loss',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 14
                      ),
                      CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey,
                          child: SvgPicture.asset('assets/doctor.svg',height: 40,width: 40)
                      ),
                       InkWell(
                         onTap: (){},
                        child: const Text('Ear Wax',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                                        'Explore More',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.lightBlue,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                        const SizedBox(
                          height: 14
                        ),
                        CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey,
                            child: SvgPicture.asset('assets/doctor.svg',height: 40,width: 40)
                        ),
                         InkWell(
                           onTap: (){},
                          child: const Text('Stomach Pain',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 14
                        ),
                        CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey,
                            child: SvgPicture.asset('assets/doctor.svg',height: 40,width: 40)
                        ),
                         InkWell(
                           onTap: (){},
                          child: const Text('Sexual health',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ],
                    ),
                )

              ],
            ),
            const SizedBox(
              height: 14
            ),
            const Divider(
              color: Colors.black12,
              indent: 10.0,
              endIndent: 10.0,
            ),
                const SizedBox(
                  height: 4,
                ),
                const Row(
                  children: [
                    Align(
                      widthFactor: 1.20,
                      child: Text(
                        'Search by speciality',
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700
                    ),
              ),
            ),
                  ],
                ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Align(
                              widthFactor: 1.10,
                              child: Container(
                                    padding: EdgeInsets.all(8.0),
                                    height: 70,
                                    width: 170,
                                    color: CupertinoColors.systemGrey6,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.grey,
                                        child: SvgPicture.asset('assets/doctor.svg',height: 30,width: 30,fit: BoxFit.contain,)
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                     InkWell(
                                       onTap: (){},
                                      child: const Text(
                                        "Women's Health",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Align(
                              widthFactor: 1.10,
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                height: 70,
                                width: 170,
                                color: CupertinoColors.systemGrey6,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.grey,
                                        child: SvgPicture.asset('assets/doctor.svg',height: 30,width: 30,fit: BoxFit.contain,)
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                     InkWell(
                                       onTap: (){},
                                      child: const Text(
                                        "Radiologist",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Align(
                              widthFactor: 1.10,
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                height: 70,
                                width: 170,
                                color: CupertinoColors.systemGrey6,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.grey,
                                        child: SvgPicture.asset('assets/doctor.svg',height: 30,width: 30,fit: BoxFit.contain,)
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                     InkWell(
                                       onTap: (){},
                                      child: const Text(
                                        "Neurologist",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Align(
                              widthFactor: 1.10,
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                height: 70,
                                width: 170,
                                color: CupertinoColors.systemGrey6,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.grey,
                                        child: SvgPicture.asset('assets/doctor.svg',height: 30,width: 30,fit: BoxFit.contain,)
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                     InkWell(
                                       onTap: (){},
                                      child: const Text(
                                        "Bone & Joints",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Align(
                              widthFactor: 1.10,
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                height: 70,
                                width: 170,
                                color: CupertinoColors.systemGrey6,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.grey,
                                        child: SvgPicture.asset('assets/doctor.svg',height: 30,width: 30,fit: BoxFit.contain,)
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                     InkWell(
                                       onTap: (){},
                                      child: const Text(
                                        "Ear & Throat",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                       Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                height: 70,
                                width: 170,
                                color: CupertinoColors.systemGrey6,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.grey,
                                        child: SvgPicture.asset('assets/doctor.svg',height: 30,width: 30,fit: BoxFit.contain,)
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                     InkWell(
                                       onTap: (){},
                                      child: const Text(
                                        "General Physician",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                height: 70,
                                width: 170,
                                color: CupertinoColors.systemGrey6,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.grey,
                                        child: SvgPicture.asset('assets/doctor.svg',height: 30,width: 30,fit: BoxFit.contain,)
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                     InkWell(
                                       onTap: (){},
                                      child: const Text(
                                        "Skin & Care",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                height: 70,
                                width: 170,
                                color: CupertinoColors.systemGrey6,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.grey,
                                        child: SvgPicture.asset('assets/doctor.svg',height: 30,width: 30,fit: BoxFit.contain,)
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                     InkWell(
                                       onTap: (){},
                                      child: const Text(
                                        "Homeopathy",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                height: 70,
                                width: 170,
                                color: CupertinoColors.systemGrey6,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.grey,
                                        child: SvgPicture.asset('assets/doctor.svg',height: 30,width: 30,fit: BoxFit.contain,)
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                     InkWell(
                                       onTap: (){},
                                      child: const Text(
                                        "Dental Care",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                height: 70,
                                width: 170,
                                color: CupertinoColors.systemGrey6,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.grey,
                                        child: SvgPicture.asset('assets/doctor.svg',height: 30,width: 30,fit: BoxFit.contain,)
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                     InkWell(
                                      onTap: (){},
                                      child: const Text(
                                        "Child Specialist",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                      )
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

