import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final _formKey = GlobalKey<FormState>();

  var result = 'nothing';
  late var interpreter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    LoadModel();
  }

  LoadModel() async {
    interpreter = await Interpreter.fromAsset('assets/ann_model.tflite');
  }

  performAction() {
    int i_age = int.parse(age_Controller.text);
    int i_Gender = int.parse(gender_Controller.text);
    double i_Bmi = double.parse(Bmi_Controller.text);
    double i_Alcholic_consumption = double.parse(Alchoholic_c_Controller.text);
    int i_smoking = int.parse(Smoking_Controller.text);
    int i_Genetic_risk = int.parse(Genetic_risk_Controller.text);
    double i_physically_Activity = double.parse(Physically_Ac_Controller.text);
    int i_diabetes = int.parse(Diabeties_Controller.text);
    int i_hypertension = int.parse(hypertension_Controller.text);
    double i_liver_funtion = double.parse(LIver_Test_Controller.text);

    var input_age = [i_age];
    var input_gender = [i_Gender];
    var input_Bmi = [i_Bmi];
    var input_Alcholic_consumption = [i_Alcholic_consumption];
    var input_smoking = [i_smoking];
    var input_genetic = [i_Genetic_risk];
    var input_physically = [i_physically_Activity];
    var input_diabetes = [i_diabetes];
    var input_hyperten = [i_hypertension];
    var input_liver = [i_liver_funtion];

    // input: List<Object>
    var inputs = [
      input_age,
      input_gender,
      input_Bmi,
      input_Alcholic_consumption,
      input_smoking,
      input_genetic,
      input_physically,
      input_diabetes,
      input_hyperten,
      input_liver,
    ];

    var output_age = List<double>.filled(1, 0);
    var output_gender = List<double>.filled(1, 0);
    var output_Bmi = List<double>.filled(1, 0);
    var output_Alchohol = List<double>.filled(1, 0);
    var output_smoking = List<double>.filled(1, 0);
    var output_gentic = List<double>.filled(1, 0);
    var output_physically = List<double>.filled(1, 0);
    var output_diabetes = List<double>.filled(1, 0);
    var output_hypertension = List<double>.filled(1, 0);
    var output_liver = List<double>.filled(1, 0);

    // output: Map<int, Object>
    var outputs = {
      0: output_age,
      1: output_gender,
      2: output_Bmi,
      3: output_Alchohol,
      4: output_smoking,
      5: output_gentic,
      6: output_physically,
      7: output_diabetes,
      8: output_hypertension,
      9: output_liver,
    };

    print("liver");
    print(output_liver);
    // inference
    interpreter.runForMultipleInputs(inputs, outputs);

    // print outputs
    print(outputs);
  }

  TextEditingController age_Controller = TextEditingController();
  TextEditingController gender_Controller = TextEditingController();
  TextEditingController Bmi_Controller = TextEditingController();

  TextEditingController Alchoholic_c_Controller = TextEditingController();
  TextEditingController Smoking_Controller = TextEditingController();

  TextEditingController Genetic_risk_Controller = TextEditingController();
  TextEditingController Physically_Ac_Controller = TextEditingController();
  TextEditingController Diabeties_Controller = TextEditingController();

  TextEditingController hypertension_Controller = TextEditingController();
  TextEditingController LIver_Test_Controller = TextEditingController();

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
                        controller: age_Controller,
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
                        controller: gender_Controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          prefixIcon: Icon(Icons.person_2_sharp),
                          hintText: 'Gender',
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 45,
                      width: 150,
                      child: TextFormField(
                        controller: Bmi_Controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          prefixIcon: Icon(Icons.person_2_sharp),
                          hintText: 'BMI',
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),

                    Container(
                      height: 45,
                      width: 150,
                      child: TextFormField(
                        controller: Alchoholic_c_Controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          prefixIcon: Icon(Icons.person_2_sharp),
                          hintText: 'Alchoholic Consumption',
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: Smoking_Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    prefixIcon: Icon(Icons.person_2_sharp),
                    hintText: 'smoking',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: Genetic_risk_Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    prefixIcon: Icon(Icons.person_2_sharp),
                    hintText: 'GeneticRisk',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: Physically_Ac_Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    prefixIcon: Icon(Icons.person_2_sharp),
                    hintText: 'physcicalyy activity',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: Diabeties_Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    prefixIcon: Icon(Icons.person_2_sharp),
                    hintText: 'diabetes',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: hypertension_Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    prefixIcon: Icon(Icons.person_2_sharp),
                    hintText: 'hypertension',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: LIver_Test_Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    prefixIcon: Icon(Icons.person_2_sharp),
                    hintText: 'Liver Function test',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    performAction();
                  },
                  child: Text("Detection"),
                ),

                Text(result),
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
