import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: backImg());
  }
}

Widget backImg() {
  return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/dark.png"), fit: BoxFit.cover)),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          logIn(),
          userField(),
          passwordField(),
          const SizedBox(
            height: 20,
          ),
          loginButton()
        ],
      )));
}

Widget logIn() {
  return Center(
    child: Container(
        padding: const EdgeInsets.all(10.0),
        child: const Text(
          "Log in",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),
          textAlign: TextAlign.center,
        )),
  );
}

Widget userField() {
  return Container(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.person_2_outlined,
        ),
        hintText: "User",
        hintStyle: const TextStyle(color: Color.fromARGB(255, 91, 86, 86)),
        fillColor: Colors.white.withOpacity(0.3),
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
      ),
      style: const TextStyle(color: Colors.white),
    ),
  );
}

Widget passwordField() {
  return Container(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock),
        hintText: "Password",
        hintStyle: const TextStyle(color: Color.fromARGB(255, 91, 86, 86)),
        fillColor: Colors.white.withOpacity(0.3),
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
      ),
      style: const TextStyle(color: Colors.white),
    ),
  );
}

Widget loginButton() {
  return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.black;
          }
          return Colors.grey;
        }),
        minimumSize: MaterialStateProperty.all(const Size(390, 50)),
      ),
      onPressed: () {},
      child: const Text(
        "Enter",
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ));
}
