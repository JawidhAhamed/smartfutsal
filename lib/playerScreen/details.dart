import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  // Define variables to store the selected dropdown values.
  String dropdownValue1 = 'Option 1';
  String dropdownValue2 = 'Option 2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 24, 24, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 24, 24, 1),
        title: Text('Details '),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 60, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   'Field 1 Label',
            //   style: TextStyle(color: Colors.white),
            // ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'NAME',
                  contentPadding: EdgeInsets.all(20.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'CONTACT NUMBER',
                  contentPadding: EdgeInsets.all(20.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'HOURS',
                  contentPadding: EdgeInsets.all(20.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'EQUIPMENT',
                  contentPadding: EdgeInsets.all(20.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 26, 158, 88), // Background color
                  onPrimary: Colors.white, // Text color
                  shadowColor: Colors.grey, // Shadow color
                  elevation: 4, // Elevation (shadow)
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Rounded corners
                  ),
                  padding: EdgeInsets.all(16.0), // Padding around the content
                  minimumSize: Size(150.0, 50.0), // Minimum size
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailsPage()),
                  );
                },
                child: Text('SUBMIT',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w900,
                    ))),
            // Container(
            //   width: 340,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(10.0),
            //     border: Border.all(),
            //   ),
            //   child: DropdownButton<String>(

            //     value: dropdownValue1,
            //     onChanged: (newValue) {
            //       setState(() {
            //         // dropdownValue1 = newValue;
            //       });
            //     },
            //     items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
            //         .map<DropdownMenuItem<String>>((String value) {
            //       return DropdownMenuItem<String>(
            //         value: value,
            //         child: Text(value),
            //       );
            //     }).toList(),
            //   ),
            // ),
            // SizedBox(height: 16.0),

            // SizedBox(height: 16.0),
            // Text('Dropdown 2 Label'),
            // DropdownButton<String>(
            //   value: dropdownValue2,
            //   onChanged: (newValue) {
            //     setState(() {
            //       // dropdownValue2 = ;
            //     });
            //   },
            //   items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
            //       .map<DropdownMenuItem<String>>((String value) {
            //     return DropdownMenuItem<String>(
            //       value: value,
            //       child: Text(value),
            //     );
            //   }).toList(),
            // ),
            SizedBox(height: 16.0),
            
          ],
        ),
      ),
    );
  }
}
