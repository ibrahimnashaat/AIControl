// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// import 'dart:io';
//
// import '../dl_model/classifier.dart';
//
// class UploadImage extends StatefulWidget {
//   @override
//   _UploadImageState createState() => _UploadImageState();
// }
//
// class _UploadImageState extends State<UploadImage> {
//   final picker = ImagePicker();
//   Classifier classifier = Classifier();
//   PickedFile? image;
//   int digit = -1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.red,
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.black,
//         child: Icon(Icons.camera_alt_outlined),
//         onPressed: () async {
//           image = await picker.getImage(
//             source: ImageSource.gallery,
//             maxHeight: 300,
//             maxWidth: 300,
//             imageQuality: 100,
//           );
//           digit = await classifier.classifyImage(image!);
//           setState(() {});
//         },
//       ),
//       appBar: AppBar(
//         backgroundColor: Colors.pink,
//         title: Text("Best digit recognizer in the world"),
//       ),
//       body: Align(
//         alignment: Alignment.center,
//         child: Column(
//           children: [
//             SizedBox(
//               height: 40,
//             ),
//             Text("Image will be shown below", style: TextStyle(fontSize: 20)),
//             SizedBox(
//               height: 10,
//             ),
//             Container(
//               width: 200,
//               height: 200,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(color: Colors.black, width: 2),
//                 // image: DecorationImage(
//                 //   fit: BoxFit.fill,
//                 //   image: digit == -1
//                 //       ? const AssetImage('assets/white_background.jpg')
//                 //       : Image.file(File(image.path)),
//                 // ),
//               ),
//               child:
//
//               digit == -1
//                   ? Image.asset('assets/images/ahmed.jpg')
//                   : Image.asset('assets/images/white_background.jpg')
//               // Image.file(File(image!.path)),
//             ),
//             const SizedBox(height: 45),
//             const Text("Current Prediction:",
//                 style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 20),
//             Text(digit == -1 ? "" : "$digit",
//                 style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
//           ],
//         ),
//       ),
//     );
//   }
// }
