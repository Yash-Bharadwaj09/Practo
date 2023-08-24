import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practo/src/presentation/views/home_page/home_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          'Find & Book',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white70,
            size: 18,
          ),
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ));
          },
        ),
        actions: [
          DropdownButton<String>(
              icon: const Icon(
                Icons.location_on_outlined,
                size: 14,
                color: Colors.teal,
              ),
              value: dropdownValue,
              focusColor: Colors.blue.shade900,
              style: const TextStyle(fontSize: 12, color: Colors.black45),
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              }),
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
                                style: BorderStyle.solid)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        )),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                const BorderSide(color: Colors.white70)),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 12,
                          color: Colors.black38,
                        ),
                        hintText:
                            'Search doctors, specialities, clinics, hospitals ',
                        hintStyle: const TextStyle(
                            fontSize: 13, color: Colors.black38)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
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
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _buildCircularImages(
                        iconText: "Bone Surgery",
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _buildCircularImages(
                        iconText: "Ear Wax",
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
                        height: 14,
                      ),
                      _buildCircularImages(
                        iconText: "Hair Surgery",
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _buildCircularImages(
                        iconText: "Cold & Cough",
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
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _buildCircularImages(
                        iconText: "Sexual Health",
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      _buildCircularImages(
                        iconText: "Stomach Pain",
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 14,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Search by speciality',
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildContainerImages(
                            userText: "Women's Health",
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          _buildContainerImages(
                            userText: "Radiologist",
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          _buildContainerImages(
                            userText: "Neurologist",
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          _buildContainerImages(
                            userText: "Bones & Joints",
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          _buildContainerImages(
                            userText: "Ear & Throat",
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                  ),
                   Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        _buildContainerImages(
                          userText: "Homeopathy",
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        _buildContainerImages(
                          userText: "Ear & Nose",
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        _buildContainerImages(
                          userText: "Skin & Hair",
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        _buildContainerImages(
                          userText: "Dental Care",
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        _buildContainerImages(
                          userText: "Child Specialist",
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                    ],
                  ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  _buildCircularImages({
    required String iconText,
  }){
    return Column(
      children: [
        CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey,
            child: SvgPicture.asset(
              'assets/doctor.svg',
              height: 40,
              width: 40,
            )),
        InkWell(
          onTap: () {},
          child: Text(
            iconText,
            style: const TextStyle(
                fontSize: 12,
                color: Colors.black54,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
  _buildContainerImages({
    required String userText,
  }){
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 70,
      width: 170,
      color: CupertinoColors.systemGrey6,
      child: Row(
        children: [
          CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              child: SvgPicture.asset(
                'assets/doctor.svg',
                height: 30,
                width: 30,
              )),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              userText,
              style: const TextStyle(
                  fontSize: 11,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
