import 'package:currency_converter/currency.dart';
import 'package:currency_converter/currency_converter.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class SellerScreen extends StatefulWidget {
  const SellerScreen({super.key});

  @override
  State<SellerScreen> createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {

  String barcode = '';
  double convertedCurrency = 0;
  int lotSize = 1000;
  int sampleSize = 80;

  // Barcode scanner
  Future<void> scanBarcode() async {
    barcode = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666', // Color of the scanner line
      'Cancel', // Cancel button text
      true, // Flash button
      ScanMode.BARCODE,
    );
    setState(() {});
  }

  // Future<void> convertCurrency() async {
  //   // Define the amount to be converted
  //   double amount = 100; // Example amount to convert
  //
  //   // Use Currency class to specify the 'from' and 'to' currencies
  //   Currency fromCurrency = const Currency('USD');
  //   Currency toCurrency = const Currency('INR');
  //
  //   // Call the static convert method with the correct parameters
  //   double convertedAmount = await CurrencyConverter.convert(
  //     amount: amount,
  //     from: fromCurrency,
  //     to: toCurrency,
  //   );
  //
  //   // Update the UI with the converted value
  //   setState(() {
  //     convertedCurrency = convertedAmount;
  //   });
  // }

  // Sample size calculation
  int calculateSampleSize(int lotSize) {
    if (lotSize <= 50) return 20;
    if (lotSize <= 150) return 30;
    if (lotSize <= 500) return 50;
    if (lotSize <= 1000) return 80;
    if (lotSize <= 5000) return 125;
    return 200;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Seller Screen"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            // Barcode Scanner
            ElevatedButton(
              onPressed: scanBarcode,
              child: const Text('Scan Barcode'),
            ),
            Text('Scanned Barcode: $barcode'),
            const SizedBox(height: 20),

            // Currency Converter
            // ElevatedButton(
            //   onPressed: convertCurrency,
            //   child: const Text('Convert Currency'),
            // ),
            Text('Converted Currency: $convertedCurrency INR'),
            const SizedBox(height: 20),

            // Sample Size Calculation
            Text('Lot Size: $lotSize'),
            Text('Calculated Sample Size: ${calculateSampleSize(lotSize)}'),
            const SizedBox(height: 20),

            // AQL Chart
            Container(
              height: 300,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: true),
                  titlesData: FlTitlesData(show: true),
                  borderData: FlBorderData(show: true),
                  minX: 0,
                  maxX: 10000,
                  minY: 0,
                  maxY: 20,
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        const FlSpot(50, 1),
                        const FlSpot(150, 2),
                        const FlSpot(500, 3),
                        const FlSpot(1000, 4),
                        const FlSpot(3000, 6),
                        const FlSpot(5000, 10),
                        const FlSpot(10000, 15),
                      ],
                      isCurved: true,
                      color: Colors.blue,
                      belowBarData: BarAreaData(show: true, color: Colors.blue.withOpacity(0.2)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
