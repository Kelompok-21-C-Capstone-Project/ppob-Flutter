import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FormBuilderContoh(),
    );
  }
}

class FormBuilderContoh extends StatefulWidget {
  const FormBuilderContoh({Key? key}) : super(key: key);

  @override
  State<FormBuilderContoh> createState() => _FormBuilderContohState();
}

class _FormBuilderContohState extends State<FormBuilderContoh> {
  bool autoValidate = true;
  final _formKey = GlobalKey<FormBuilderState>();
  void _onChanged(dynamic val) => debugPrint(val.toString());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          FormBuilder(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 15),
                FormBuilderRadioGroup<String>(
                  decoration: const InputDecoration(labelText: "Metode"),
                  initialValue: null,
                  name: "Metode Pembayaran",
                  onChanged: _onChanged,
                  validator: FormBuilderValidators.compose(
                      [FormBuilderValidators.required()]),
                  controlAffinity: ControlAffinity.trailing,
                  options: ['COD', 'Transfer', 'Kredit']
                      .map((e) => FormBuilderFieldOption(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(growable: false),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
