import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task1/datas.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController date = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  GlobalKey<FormState> loginkey = GlobalKey<FormState>();
  GlobalKey<FormState> signupkey = GlobalKey<FormState>();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController conformpasswordcontroller = TextEditingController();
  TextEditingController terms = TextEditingController();
  bool ischecked = false;
  Future<void> pickdate(context) async {
    final DateTime? pickddate = await showDatePicker(
        context: context, firstDate: DateTime(1980), lastDate: DateTime.now());
    if (pickddate != null) {
      String formatdate = DateFormat("dd-MM-yyyy").format(pickddate);
      setState(() {
        date.text = formatdate;
      });
    }
  }

  TextEditingController time = TextEditingController();
  Future<void> picktime(contaxt) async {
    final TimeOfDay? pickedtime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (pickedtime != null) {
      String formattime = pickedtime.format(context);
      setState(() {
        time.text = formattime;
      });
    }
  }

  Datas data = Datas();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: signupkey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    'SIGNUP',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "name required";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: 'Name', border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "email required";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: 'email', border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "phone no is required";
                      } else if (value.length != 10) {
                        return "mobile number must be 10 digits";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: 'phone', border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "dob is required";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: 'dob', border: OutlineInputBorder()),
                    controller: date,
                    onTap: () {
                      pickdate(context);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: time,
                    onTap: () {
                      picktime(context);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "time ";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: 'time', border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "password required";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: 'password', border: OutlineInputBorder()),
                    controller: password,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "conpass required";
                      } else if (value != password.text) {
                        return 'invalid password';
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: 'conform password',
                        border: OutlineInputBorder()),
                    controller: conformpasswordcontroller,
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: ischecked,
                        onChanged: (value) {
                          setState(() {
                            ischecked = value!;
                          });
                        },
                      ),
                      Text(
                        'terms and conditions',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(password.text);
                      print(conformpasswordcontroller.text);
                      if (signupkey.currentState!.validate()) {
                        ischecked == false
                            ? ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(
                                    content: Text(
                                'please click the terms and condition',
                              )))
                            : data.sign(data.password.text,
                                data.conformpasswordcontroller.text, context);
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            ischecked == false ? Colors.grey : Colors.green)),
                    child: const Text('signup'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
