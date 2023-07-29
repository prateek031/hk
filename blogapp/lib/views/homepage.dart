// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

// import 'dart:io';

// import 'package:blogapp/services/crud.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String? authorName;
//   String? title;
//   String? desc;
//   File ? selectedImage;
//   CrudMethod crudMethod=  CrudMethod();
//   Future getImage()async{
//     final picker = ImagePicker();
//        final image = await picker.pickImage(source:ImageSource.gallery);
//        setState(() {
//          selectedImage = image != null ? File(image.path) : null;
//        });
//        void uploadBlog() {
//         if (selectedImage != null) {
//           final storageRef = FirebaseStorage.instance.ref().child('blogimages').child(path);
//         }
// }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(
//           Icons.navigate_before,
//           size: 22,
//         ),
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Flutter",
//               style: TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.w800,
//               ),
//             ),
//             Text(
//               "Blog",
//               style: TextStyle(
//                 fontSize: 22,
//                 color: Colors.blue,
//                 fontWeight: FontWeight.w400,
//                 fontStyle: FontStyle.italic,
//               ),
//             ),
//           ],
//         ),
//         actions: [
//           GestureDetector(
//             onTap: () {
//               uploadBlog();
//             },
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 8),
//               child: Icon(
//                 Icons.upload_rounded,
//                 size: 22,
//               ),
//             ),
//           ),
//         ],
//         backgroundColor: Color.fromARGB(19, 2, 2, 2),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: GestureDetector(
//               onTap:(){
//                 getImage();
//               },
//               child: selectedImage!=null ?Container(
//                 height: 150,
//                 width: MediaQuery.of(context).size.width,
                
//                 child: ClipRRect(
//                   borderRadius:BorderRadius.circular(12),
//                   child: Image.file(selectedImage!,
//                   fit: BoxFit.cover,),
//                 ),
//               ):
//               Container(
//                 height: 150,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   color: Color.fromARGB(255, 238, 236, 232),
//                 ),
//                 child: Icon(
//                   Icons.add_a_photo,
//                   size: 30,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: Container(
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 15,
//                   ),
//                   TextField(
//                     decoration: InputDecoration(
//                       hintText: "Author Name",
//                     ),
//                     onChanged: (value) {
//                       authorName = value;
//                     },
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   TextField(
//                     decoration: InputDecoration(hintText: "Title"),
//                     onChanged: (value) {
//                       title = value;
//                     },
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   TextField(
//                     decoration: InputDecoration(hintText: "Desc"),
//                     onChanged: (value) {
//                       desc = value;
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


