import 'package:flutter/material.dart';


final GlobalKey<FormState> _genderKey = GlobalKey<FormState>();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

void _submitForm(){
  if(_formKey.currentState!.validate()){}
}

String? _validateEmail(value){
  if(value!.empty){
    return 'Enter your Email-ID';
  }
  RegExp emailRegExp = RegExp(r'\S+@\S+\.\S+');
  if(!emailRegExp.hasMatch(value)){
    return 'Enter a valid Email-ID';
  }
  return null ;
}

String? _validateNumber(value){
  if(value!.isEmpty){
    return 'Enter a Phone Number';
  }
  if(value.length != 10){
    return 'Enter a valid Phone Number';
  }
  return null;
}

class MyForm2 extends StatefulWidget {
  const MyForm2({super.key});

  @override
  State<MyForm2> createState() => _MyForm2State();
}

class _MyForm2State extends State<MyForm2> {




  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          leading:  IconButton(

            icon: const Icon(Icons.arrow_back,color: Colors.black,size: 20),
            onPressed: (){
              //
            },
          ),
          title: const Row(
            children: [
              Text("User Information",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14
                ),
              ),
            ],
          ),
          centerTitle: true,
          bottom: const TabBar(
              tabs: [
                Tab(text: "Personal"),
                Tab(text: "Medical"),
                Tab(text: "Lifestyle"),
              ]
          ),
        ),
        body: TabBarView(children: [
          Tab1(formKey: _formKey),
          Tab2(formKey2: _formKey),
          Tab1(formKey: _formKey),
        ],)

      )
  );
}

class Tab1 extends StatelessWidget {
  final dynamic formKey;
  const Tab1({super.key,required this.formKey});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SizedBox(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Your Name",
                      hintStyle: TextStyle(
                          fontSize: 8
                      ),
                      labelText: "Name",
                      labelStyle: TextStyle(
                          fontSize: 12
                      ),
                      suffixIcon: Icon(Icons.person,size: 10),
                    ),
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'Enter a Username';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                      textAlign: TextAlign.right ,
                      decoration: const InputDecoration(
                        hintText: "Enter Your Number",
                        hintStyle: TextStyle(
                            fontSize: 8
                        ),
                        labelText: "Contact Number",
                        labelStyle: TextStyle(
                            fontSize: 12
                        ),
                      ),
                      validator: _validateNumber
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        hintText: "Enter Your Email",
                        hintStyle: TextStyle(
                            fontSize: 8
                        ),
                        labelText: "Email-ID",
                        labelStyle: TextStyle(
                            fontSize: 12
                        ),
                      ),
                      validator: _validateEmail
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                    key: _genderKey,
                    textAlign: TextAlign.right,
                    decoration: const InputDecoration(
                      hintText: "Enter Your Gender",
                      hintStyle: TextStyle(
                          fontSize: 8
                      ),
                      labelText: "Gender",
                      labelStyle: TextStyle(
                          fontSize: 12
                      ),
                    ),
                    validator: (value) {
                      if ( value == null || value.isEmpty ){
                        return 'Required Field';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: const InputDecoration(
                      hintText: "yyyy mm dd",
                      hintStyle: TextStyle(
                          fontSize: 8
                      ),
                      labelText: "Date of Birth",
                      labelStyle: TextStyle(
                          fontSize: 12
                      ),
                    ),
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'Enter Your DOB';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: const InputDecoration(
                      hintText: "Enter Your Blood Group",
                      hintStyle: TextStyle(
                          fontSize: 8
                      ),
                      labelText: "Blood Group",
                      labelStyle: TextStyle(
                          fontSize: 12
                      ),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Required Field';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: const InputDecoration(
                      hintText: "Marital Status",
                      hintStyle: TextStyle(
                          fontSize: 8
                      ),
                      labelText: "Marital Status",
                      labelStyle: TextStyle(
                          fontSize: 12
                      ),
                    ),
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'Required Field';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: const InputDecoration(
                      hintText: "in Ft & In",
                      hintStyle: TextStyle(
                          fontSize: 8
                      ),
                      labelText: "Height",
                      labelStyle: TextStyle(
                          fontSize: 12
                      ),
                    ),
                    validator: (value) {
                      if(value!.isEmpty){
                        return  'Required Field';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: const InputDecoration(
                      hintText: "in Kg",
                      hintStyle: TextStyle(
                          fontSize: 8
                      ),
                      labelText: "Weight",
                      labelStyle: TextStyle(
                          fontSize: 12
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: const InputDecoration(
                      hintText: "Relation & Contact No.",
                      hintMaxLines: 2,
                      hintStyle: TextStyle(
                          fontSize: 8
                      ),
                      labelText: "Emergency Contact",
                      labelStyle: TextStyle(
                          fontSize: 12
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        hintText: "Enter Your Location",
                        hintStyle: TextStyle(
                            fontSize: 8
                        ),
                        labelText: "Location",
                        labelStyle: TextStyle(
                            fontSize: 12
                        ),
                      ),
                      validator: _validateEmail
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(

                    ),
                    onPressed: _submitForm,
                    child: Text('Complete Profile')
                ),
              ),
              const SizedBox(
                  height: 20
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tab2 extends StatelessWidget {
  final dynamic formKey2;
  const Tab2({super.key,required this.formKey2});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Form(
          key: formKey2,
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: SizedBox(
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        hintText: "if any",
                        hintStyle: TextStyle(
                            fontSize: 8
                        ),
                        labelText: "Allergies",
                        labelStyle: TextStyle(
                            fontSize: 12
                        ),
                      ),
                    ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SizedBox(
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: const InputDecoration(
                      hintText: "add medications",
                      hintStyle: TextStyle(
                          fontSize: 8
                      ),
                      labelText: "Current Medications",
                      labelStyle: TextStyle(
                          fontSize: 12
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SizedBox(
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: const InputDecoration(
                      hintText: "add medications",
                      hintStyle: TextStyle(
                          fontSize: 8
                      ),
                      labelText: "Past Medications",
                      labelStyle: TextStyle(
                          fontSize: 12
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SizedBox(
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: const InputDecoration(
                      hintText: "add disease",
                      hintStyle: TextStyle(
                          fontSize: 8
                      ),
                      labelText: "Chronic Diseases",
                      labelStyle: TextStyle(
                          fontSize: 12
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SizedBox(
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: const InputDecoration(
                      hintText: "add incident",
                      hintStyle: TextStyle(
                          fontSize: 8
                      ),
                      labelText: "Injuries",
                      labelStyle: TextStyle(
                          fontSize: 12
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SizedBox(
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    decoration: const InputDecoration(
                      hintText: "add surgeries",
                      hintStyle: TextStyle(
                          fontSize: 8
                      ),
                      labelText: "Surgeries",
                      labelStyle: TextStyle(
                          fontSize: 12
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(

                    ),
                    onPressed: _submitForm,
                    child: Text('Complete Profile')
                ),
              ),
              const SizedBox(
                  height: 20
              ),
            ],
          ),
        ),
      ),
    );
  }
}
