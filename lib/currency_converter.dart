import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});
  @override
  State<CurrencyConverter> createState() {
    return _CurrencyConverter();
  }
}

class _CurrencyConverter extends State<CurrencyConverter> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.green, width: 2.0, style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(10),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Currency Converter',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 231, 235, 232),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 6, 239, 14),
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 90, 88, 88),
                  focusedBorder: border,
                  enabledBorder: border,
                  hintText: "Please Enter the amount in USD",
                  hintStyle:
                      const TextStyle(color: Color.fromARGB(255, 6, 244, 45)),
                  prefixIcon: const Icon(
                    Icons.monetization_on_sharp,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  result = (double.parse(textEditingController.text)) * 81;
                  setState(() {});
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(" Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class CurrencyConverterr extends StatelessWidget {
//   const CurrencyConverterr({super.key});
//   @override
//   Widget build(BuildContext context) {
    
//   }
// }
