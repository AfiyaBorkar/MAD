import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Department',
      home: MyForm(),
    );
  }
}

class MyForm extends StatelessWidget {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 2500,
          
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("./assets/images/bckgd.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.all(32),
          child: Form(
            key: _key,
            child: Column(
              children: [
                ClipRRect(
                  child: Image.network(
                    "https://famt.ac.in/wp-content/uploads/2021/09/Finolex-Academy-of-Management-and-Technology-Ratnagiri-2.png",
                    fit: BoxFit.fill,
                    width: 600,
                    height: 100,
                  ),
                ),
                Text(""),
                Text(
                  'Student Complaint Form',
                  style: (TextStyle(
                      fontSize: 50,
                      fontFamily: "Raleway",
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold)),
                  textAlign: TextAlign.center,
                ),
                Padding(padding: EdgeInsets.all(10)),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 900,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      labelText: "Email ID",
                      border: OutlineInputBorder(),
                      hintText: "Email ID",
                      fillColor: Colors.white24,
                      filled: true,
                    ),
                    // initialValue: "Email ID",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "This field cannot be empty";
                      } else if (value.length <= 5) {
                        return "This field should be greater than length 5";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                SizedBox(
                  width: 900,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      border: OutlineInputBorder(),
                      labelText: "Student Name ",
                      hintText: "Student Name (Surname Name MidName)",
                      fillColor: Colors.white24,
                      filled: true,
                    ),
                    // initialValue: "Name",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "This field cannot be empty";
                      } else if (value.length <= 5) {
                        return "This field should be greater than length 5";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                SizedBox(
                  width: 900,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.format_list_numbered),
                      border: OutlineInputBorder(),
                      labelText: "Registration Number",
                      hintText: "Registration Number",
                      fillColor: Colors.white24,
                      filled: true,
                    ),
                    // initialValue: "Registration Number",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "This field cannot be empty";
                      } else if (value.length <= 1) {
                        return "This field should be greater than length 1";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                SizedBox(
                  width: 900,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      border: OutlineInputBorder(),
                      labelText: "Contact Number",
                      hintText: "Contact Number",
                      fillColor: Colors.white24,
                      filled: true,
                    ),
                    // initialValue: "Contact Number",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "This field cannot be empty";
                      } else if (value.length <= 9) {
                        return "This field should be of length 10";
                      } else if (value.length > 10) {
                        return "This field should not be greater than length 10";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                SizedBox(
                  width: 900,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.home_work),
                      border: OutlineInputBorder(),
                      labelText: "Class and Branch",
                      hintText: "Class and Branch",
                      fillColor: Colors.white24,
                      filled: true,
                    ),
                    // initialValue: 'Class and Branch',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "This field cannot be empty";
                      } else if (value.length <= 2) {
                        return "This field should be greater than length 2";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                SizedBox(
                  width: 900,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.error),
                      border: OutlineInputBorder(),
                      labelText: "Complaint Title",
                      hintText: "Complaint Title",
                      fillColor: Colors.white24,
                      filled: true,
                    ),
                    // initialValue: 'Class and Branch',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "This field cannot be empty";
                      } else if (value.length <= 10) {
                        return "This field should be greater than length 10";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                SizedBox(
                  width: 900,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.settings_suggest),
                      border: OutlineInputBorder(),
                      labelText: "Complaint Description / Suggestions",
                      hintText: "Complaint Description/ Suggestions",
                      contentPadding: EdgeInsets.all(40),
                      fillColor: Colors.white24,
                      filled: true,
                    ),
                    // initialValue: 'Class and Branch',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "This field cannot be empty";
                      } else if (value.length <= 10) {
                        return "This field should be greater than length 10";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FlatButton(
                  onPressed: () => {
                    if (_key.currentState!.validate())
                      {
                        // Scaffold.of(context).showSnackBar(
                        //     SnackBar(content: Text('data is submitted')));

                        complaint(context),
                        print("Your data is submitted")
                      },
                  },
                  child: Text("Submit"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(25),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void complaint(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text(
        "Your Response Have been submitted Sucessfully,\n Thankyou",
        style: TextStyle(
            color: Colors.red[600],
            fontFamily: "Raleway",
            fontSize: 25,
            backgroundColor: Colors.white24,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
