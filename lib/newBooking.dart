// import 'package:flutter/material.dart';

// // class NewBooking extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //           title: Text('Add New Booking'),
// //           backgroundColor: Color.fromARGB(255, 28, 22, 22)),
// //       body: Center(
// //         child: Text('New Booking form will be appeared here'),
// //       ),
// //     );
// //   }
// // }

// class NewBooking extends StatefulWidget {
//   @override
//   _NewBookingState createState() => _NewBookingState();
// }

// class _NewBookingState extends State<NewBooking> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _cropController = TextEditingController();
//   bool _subscribeToNewsletter = false;
//   // String _selectedItem = 'Select'; // Initial dropdown value

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Form Example'),
//         backgroundColor: Color.fromARGB(255, 28, 22, 22),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: <Widget>[
//               // Text Field for Name
//               TextFormField(
//                 controller: _nameController,
//                 decoration: InputDecoration(labelText: 'Name'),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your name';
//                   }
//                   return null;
//                 },
//               ),

//               // Text Field for Email
//               TextFormField(
//                 controller: _emailController,
//                 decoration: InputDecoration(labelText: 'Email'),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your email';
//                   }
//                   if (!value.contains('@')) {
//                     return 'Please enter a valid email address';
//                   }
//                   return null;
//                 },
//               ),

//               DropdownButtonFormField<String>(
//                 // value: _selectedItem,
//                 onChanged: (value) {
//                   setState(() {
//                     _cropController.text = value!;
//                   });
//                 },
//                 items:
//                     //     _dropdownItems.map<DropdownMenuItem<String>>((String item) {
//                     //   return DropdownMenuItem<String>(
//                     //     value: item, // Make sure each value is unique
//                     //     child: Text(item),
//                     //   );
//                     // }).toList(),
//                     [
//                   DropdownMenuItem(child: Text("Select a crop"), value: ""),
//                   DropdownMenuItem(
//                       child: Text("Vegetable"), value: "vegetable"),
//                   DropdownMenuItem(child: Text("Chilli"), value: "chilli"),
//                   DropdownMenuItem(child: Text("Leeks"), value: "leeks"),
//                 ],
//                 decoration: InputDecoration(labelText: 'Select an option'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please select an option';
//                   }
//                   return null;
//                 },
//               ),

//               // Checkbox for Newsletter Subscription
//               CheckboxListTile(
//                 title: Text('Subscribe to Newsletter'),
//                 value: _subscribeToNewsletter,
//                 onChanged: (value) {
//                   setState(() {
//                     _subscribeToNewsletter = value!;
//                   });
//                 },
//               ),

//               // Submit Button
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     // Form is valid, process the data
//                     final name = _nameController.text;
//                     final email = _emailController.text;
//                     final subscribe = _subscribeToNewsletter;
//                     final crop = _cropController.text;

//                     // TODO: Submit the form data (e.g., send to a server)

//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                         content: Text(
//                             'Form submitted: $name, $email, Subscribe: $subscribe, Crop: $crop'),
//                       ),
//                     );
//                   }
//                 },
//                 child: Text('Submit'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
