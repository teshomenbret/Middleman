// import 'package:flutter/material.dart';
// import 'logInUser.dart';

// class SignUpCompany extends StatelessWidget {
//   const SignUpCompany({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Padding(
//         padding:
//             const EdgeInsets.only(left: 60, right: 60, bottom: 30, top: 100),
//         child: Form(
//             // key: ,
//             child: ListView(
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(bottom: 20),
//               child: Text("Create account",
//                   style: TextStyle(
//                       fontSize: 40,
//                       fontFamily: "Intent",
//                       fontWeight: FontWeight.w800)),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(bottom: 20),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     prefixIcon: const Icon(Icons.person),
//                     labelText: 'UserName',
//                     hintText: 'Enter your User name',
//                     labelStyle: const TextStyle(fontStyle: FontStyle.italic),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10))),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(bottom: 20),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     prefixIcon: const Icon(Icons.phone),
//                     labelText: 'Full Name',
//                     hintText: 'Enter Full Name',
//                     labelStyle: const TextStyle(fontStyle: FontStyle.italic),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10))),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(bottom: 20),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     prefixIcon: const Icon(Icons.email),
//                     labelText: 'Email',
//                     hintText: 'Enter your email',
//                     labelStyle: const TextStyle(fontStyle: FontStyle.italic),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10))),
//               ),
//             ),
//             TextFormField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                     prefixIcon: const Icon(Icons.key),
//                     labelText: 'password',
//                     hintText: 'Enter your password',
//                     labelStyle: const TextStyle(fontStyle: FontStyle.italic),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10)))),
//             Padding(
//                 padding: const EdgeInsets.only(top: 20),
//                 child: SizedBox(
//                     width: 350,
//                     height: 50,
//                     child: ElevatedButton(
//                         style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all(
//                               const Color.fromARGB(255, 19, 10, 200)),
//                           elevation: MaterialStateProperty.all(10),
//                         ),
//                         child: const Text(
//                           'Sign up',
//                           style: TextStyle(
//                               fontWeight: FontWeight.w700, fontSize: 15),
//                         ),
//                         onPressed: () {
//                           Navigator.push(context,
//                               MaterialPageRoute(builder: (context) => LogIn()));
//                         }))),
//             Padding(
//               padding: const EdgeInsets.only(left: 2, right: 10, top: 10),
//               child: Row(
//                 children: [
//                   const Text(
//                     "Already have an account ?    ",
//                     style: TextStyle(
//                         fontFamily: 'Intent',
//                         fontSize: 15,
//                         fontWeight: FontWeight.w700),
//                   ),
//                   InkWell(
//                       child: const Text('Log in',
//                           style: TextStyle(
//                               color: Color.fromARGB(255, 11, 18, 225),
//                               fontWeight: FontWeight.w700,
//                               fontSize: 15)),
//                       onTap: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (context) => LogIn()));
//                       })
//                 ],
//               ),
//             )
//           ],
//         )),
//       )),
//     );
//   }
// }
