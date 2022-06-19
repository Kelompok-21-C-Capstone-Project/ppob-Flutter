import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _inputNomor = TextEditingController();
  final _formKey = GlobalKey<FormState>();

//   var operators = {
// “FLEXI”:{“name”:”TELKOM”,”pattern”: RegExp(/^021(68|70)\d{4,8}$|^0([2-7]|9)[^1]\d?(3[^1]|68|70|80|81)\d{4,8}$/)},
// “SIMPATI”:{“name”:”TELKOMSEL”,”pattern”: RegExp(/^08(11|12|13|21)\d{6,8}$/)},
// “AS”:{“name”:”TELKOMSEL”,”pattern”: RegExp(/^08(52|53)\d{8}$/)},
// “MENTARI”:{“name”:”INDOSAT”,”pattern”: RegExp(/^08(14|15|16|55|58)\d{6,8}$/)},
// “IM2”:{“name”:”INDOSAT”,”pattern”: RegExp(/^0814\d{8}$/)},
// “IM3”:{“name”:”INDOSAT”,”pattern”: RegExp(/^08(56|57)\d{7,8}$/)},
// “STARONE”:{“name”:”INDOSAT”,”pattern”: RegExp(/^0(2130|3160)\d{4,8}$|^0([2-7]|9)[^1]\d?(61|62|63|90)\d{4,8}$/)},
// “XL BEBAS”:{“name”:”XL AXIATA”,”pattern”: RegExp(/^08(17|18|19|77|78|79)\d{6,8}$/)},
// “SMART”:{“name”:”SMARTFREN”,”pattern”: RegExp(/^08(81|82)\d{4,8}$/)},
// “FREN”:{“name”:”SMARTFREN”,”pattern”: RegExp(/^0888\d{4,8}$/)},
// “HEPI”:{“name”:”SMARTFREN”,”pattern”: RegExp(/^0([2-7]|9)\d{1,2}(21|31|50)\d{4,8}$/)},
// “ESIA”:{“name”:”BTEL”,”pattern”: RegExp(/^(02180)\d{4,8}$|^0([2-7]|9)[^1]\d?9\d{4,8}$/)},
// “THREE”:{“name”:”HCPT”,”pattern”: RegExp(/^08(96|97|98|99)\d{7,8}$/)},
// “AXIS”:{“name”:”AXIS”,”pattern”: RegExp(/^08(38|31)\d{7,8}$/)},
// “CERIA”:{“name”:”STI”,”pattern”: RegExp(/^0828\d{4,8}$/)}};
//”HALO”:{“name”:”TELKOMSEL”,”pattern”: RegExp(/^08(11|12)\d{6}$/)},
// “SIMPATI”:{“name”:”TELKOMSEL”,”pattern”: RegExp(/^08(12|13|21)\d{7,8}$/)},
//”MATRIX”:{“name”:”INDOSAT”,”pattern”: RegExp(/^08(14|15|16|55)\d{6,7}$/)},
//”MENTARI”:{“name”:”INDOSAT”,”pattern”: RegExp(/^08(15|58)\d{8}$/)},
//”XL-PASCA”:{“name”:”XL AXIATA”,”pattern”: RegExp(/^08(17|18|19)\d{6,7}$/)},
//”XL”:{“name”:”XL AXIATA”,”pattern”: RegExp(/^08(17|18|19|77|78|79)\d{6,8}$/)}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Regex Test"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                    decoration:
                        InputDecoration(labelText: "Enter your Phone Number"),
                    validator: (value) {
                      // r = raw string
                      // $ untuk mengakhiri string
                      if (value!.isEmpty || !RegExp('').hasMatch(value)) {
                        return "Please enter correct Number";
                      } else {
                        print("T_T");
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
