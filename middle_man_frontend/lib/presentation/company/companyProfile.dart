// ignore: file_names
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:middle_man_frontend/presentation/routes/routes.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.arrow_back_rounded,
                  size: 50,
                ),
                Icon(
                  Icons.edit_rounded,
                  size: 50,
                )
              ],
            ),
          ),
          Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("download.jpg"), fit: BoxFit.cover),
              shape: BoxShape.circle,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 10, left: 40, right: 40),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        helperText: "Name",
                        helperStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700)),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        helperText: "Gender",
                        helperStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700)),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        helperText: "Email Address",
                        helperStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700)),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        helperText: "Phone Number",
                        helperStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700)),
                  ),
                ],
              )),
          Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 19, 10, 200)),
                      elevation: MaterialStateProperty.all(10),
                    ),
                    onPressed: () {
                      context.go(Routes.company);
                    },
                    child: const Text(
                      'Save changes',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                  )))
        ],
      ),
    );
  }
}
