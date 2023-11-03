import 'package:flutter/material.dart';
import 'constants.dart';

class BirthDateScreen extends StatefulWidget {
  const BirthDateScreen({Key? key}) : super(key: key);

  @override
  BirthDateScreenState createState() => BirthDateScreenState();
}

class BirthDateScreenState extends State<BirthDateScreen> {
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });

      // Navigate back to the previous page immediately after selecting a date
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double he = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Image.asset(
            f1,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: wi,
          height: he,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(suImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                selectedDate != null
                    ? 'Selected Date: ${selectedDate!.toLocal()}'.split(' ')[0]
                    : 'Select your birthdate',
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () => _selectDate(context),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: const Text(
                  'Pick a date',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
