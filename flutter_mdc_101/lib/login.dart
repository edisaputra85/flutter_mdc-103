import 'package:flutter/material.dart';
import 'package:flutter_mdc_101/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Image(image: AssetImage("assets/img/diamond.png")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("SHRINE"),
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    filled: true,
                    labelText: "Username",
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    labelText: "Password",
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        _usernameController.clear();
                        _passwordController.clear();
                      },
                      child: Text("CANCEL")),
                  ElevatedButton(
                      onPressed: () {
                        //cara navigasi (pindah halaman tampilan)
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: Text("NEXT")),
                ],
              ),
            ),

            /*
            SizedBox(),
            Image(image: image,),
            Text(data),
            SizedBox(),
            TextField(),
            TextField(),
            TextButton(onPressed: onPressed, child: child),
            ElevatedButton(onPressed: onPressed, child: child),
            */
          ],
        ),
      ),
    );
  }
}
