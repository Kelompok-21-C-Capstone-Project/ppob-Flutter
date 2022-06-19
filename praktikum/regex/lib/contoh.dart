import 'package:flutter/material.dart';

class Contoh extends StatefulWidget {
  const Contoh({Key? key}) : super(key: key);

  @override
  State<Contoh> createState() => _ContohState();
}

class _ContohState extends State<Contoh> {
  // Map operator = {
  //   "Telkomsel": RegExp(r'^08(11|12|13|21)\d{6,8}$'),
  //   "Xl-Axiata": RegExp(r'^08(17|18|19|77|78|79)\d{6,8}$'),
  //   "Axis": RegExp(r'^08(38|31)\d{7,8}$'),
  //   "IM3": RegExp(r'^08(56|57)\d{7,8}$'),
  //   "Smartfren": RegExp(r'^08(81|82)\d{4,8}$'),
  //   "Three": RegExp(r'^08(96|97|98|99)\d{7,8}$'),
  // };

  // operatorsPattern: [
  //       { group: 'Telkomsel', pattern: /^08(11|12|13|21|52|53)/ },
  //       { group: 'Xl-Axiata', pattern: /^08(17|18|19|77|78|79)/ },
  //       { group: 'Axis', pattern: /^08(38|31)/ },
  //       { group: 'Im3', pattern: /^08(56|57)/ },
  //       { group: 'Smartfren', pattern: /^08(81|82)/ },
  //       { group: 'Three', pattern: /^08(96|97|98|99)/ },
  //     ],

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh"),
      ),
      body: Column(
        children: [
          Form(
            child: Column(
              children: [
                TextFormField(
                    decoration:
                        InputDecoration(labelText: "Enter your Phone Number"),
                    validator: (value) {
                      // r = raw string
                      // $ untuk mengakhiri string
                      // if (value!.isEmpty ||
                      //     !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                      //         .hasMatch(value)) {
                      //   print("Please enter correct Email");
                      // }
                      if (value!.isNotEmpty ||
                          !RegExp(r'^(0|\+|(\+[0-9]{2,4}|\(\+?[0-9]{2,4}\)) ?)([0-9]*|\d{2,4}-\d{2,4}(-\d{2,4})?)$')
                              .hasMatch(value)) {
                        return null;
                      }
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
