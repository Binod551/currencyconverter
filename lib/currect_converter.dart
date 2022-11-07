import 'package:cccccc/price.dart';
import 'package:flutter/material.dart';

class CurrecyConverter extends StatefulWidget {
  const CurrecyConverter({Key? key}) : super(key: key);

  @override
  State<CurrecyConverter> createState() => _CurrecyConverterState();
}

class _CurrecyConverterState extends State<CurrecyConverter> {
  var valueschoose = "Nepelese Rupees";
  var valueschoose1;
  @override
  Widget build(BuildContext context) {
    final _amount = price;
    final _tot = TextEditingController();
    double cal;
    double result;

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 21,
              ),
              Center(
                child: Text(
                  "Product Price In",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              DropdownButton<String>(
                  value: this.valueschoose1,
                  items: <String>[
                    'usd',
                    'Indian Rupees',
                    'euro',
                    'japanese yen'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) => setState(
                        () => this.valueschoose1 = value,
                      )),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: _tot,
                decoration: InputDecoration(
                    labelText: "Total",
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  if (valueschoose == "Nepelese Rupees" &&
                      valueschoose1 == 'Indian Rupees') {
                    cal = _amount * 1.6;
                    result = cal;
                    _tot.text = result.toString();
                  } else if (valueschoose == "Nepelese Rupees" &&
                      valueschoose1 == 'usd') {
                    cal = _amount * 0.01;
                    result = cal;
                    _tot.text = result.toString();
                  } else if (valueschoose == "Nepelese Rupees" &&
                      valueschoose1 == 'euro') {
                    cal = _amount * 0.008;
                    result = cal;
                    _tot.text = result.toString();
                  } else if (valueschoose == "Nepelese Rupees" &&
                      valueschoose1 == 'japanese yen') {
                    cal = _amount * 0.8;
                    result = cal;
                    _tot.text = result.toString();
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 14,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    "Convert",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
