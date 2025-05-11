import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _1_age_Controller = TextEditingController();
  TextEditingController _2textEditingController = TextEditingController();
  TextEditingController _3textEditingController = TextEditingController();
  TextEditingController _4textEditingController = TextEditingController();
  TextEditingController _5textEditingController = TextEditingController();
  TextEditingController _6textEditingController = TextEditingController();
  TextEditingController _7textEditingController = TextEditingController();
  TextEditingController _8textEditingController = TextEditingController();
  TextEditingController _9textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text("Liver Disease Detection APP"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 45,
                      width: 150,
                      child: TextFormField(
                        controller: _1_age_Controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          prefixIcon: Icon(Icons.person_2_sharp),
                          hintText: 'Age',
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),

                    Container(
                      height: 45,
                      width: 150,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          prefixIcon: Icon(Icons.person_2_sharp),
                          hintText: 'Height',
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class Homescreen extends StatelessWidget {
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Scrollable Form'), centerTitle: true),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           // Wrap with a Form widget
//           key: _formKey, // Assign the GlobalKey
//           child: SingleChildScrollView(
//             // Use SingleChildScrollView for scrollability
//             child: Column(
//               children: <Widget>[
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Field 1'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter text';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 12.0),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Field 2'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter text';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 12.0),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Field 3'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter text';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 12.0),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Field 4'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter text';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 12.0),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Field 5'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter text';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 20.0),
//                 ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       // Process the form data
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text('Processing Data')),
//                       );
//                     }
//                   },
//                   child: Text('Submit'),
//                 ),

//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
