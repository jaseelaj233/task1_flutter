import 'package:flutter/material.dart';
import 'package:task1/datas.dart';
import 'package:task1/signup.dart';
import 'package:task1/task1.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Datas data = Datas();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: data.loginkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "username required";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                      hintText: 'username', border: OutlineInputBorder()),
                  controller: data.usernamecontroller,
                ),
                SizedBox(
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
                  controller: data.passwordcontroller,
                  obscureText: true,
                ),
                TextButton(
                    onPressed: () {
                      if (data.loginkey.currentState!.validate()) {
                        data.checkuser(data.usernamecontroller.text,
                            data.passwordcontroller.text, context);
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(3.0),
                      color: Color.fromARGB(255, 9, 164, 115),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 13),
                      ),
                    )),
                Container(
                  child: Row(
                    children: [
                      Text('Do you have an account ?'),
                      Spacer(),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Signup(),
                            ));
                          },
                          child: Text('signup'))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
