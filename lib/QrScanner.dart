import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:fluttertoast/fluttertoast.dart';

class QrScanner extends StatelessWidget {
  QrScanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("QR Code Scanner")),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                /** To Hide Flash icon replace true to false*/
                String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
                    "#ff6666", "Cancel", true, ScanMode.QR);

                Fluttertoast.showToast(
                    msg: barcodeScanRes,
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.black38,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              //Title given on Button
              child: Text(
                "Scan QR Code",
                style: TextStyle(
                  color: Colors.indigo[900],
                ),
              ),
            ),
          ),
        ]));
  }
}
