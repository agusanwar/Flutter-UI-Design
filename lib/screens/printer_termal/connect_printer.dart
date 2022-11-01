import 'package:blue_thermal_printer/blue_thermal_printer.dart';
import 'package:flutter/material.dart';
import 'package:uidesign/core/themes/app_themes.dart';

class ConnectPrinterScreens extends StatefulWidget {
  const ConnectPrinterScreens({super.key});

  @override
  State<ConnectPrinterScreens> createState() => _ConnectPrinterScreensState();
}

class _ConnectPrinterScreensState extends State<ConnectPrinterScreens> {
  List<BluetoothDevice> devices = [];
  BluetoothDevice? selectDevice;
  BlueThermalPrinter printer = BlueThermalPrinter.instance;

  @override
  void initState() {
    super.initState();
    getDevices();
  }

  void getDevices() async {
    devices = await printer.getBondedDevices();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      appBar: AppBar(
        title: Text('Thermal Printer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<BluetoothDevice>(
              hint: Text(
                'Select Data Bluetooth',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kWhiteColor,
                ),
              ),
              value: selectDevice,
              onChanged: (device) {
                setState(() {
                  selectDevice = device;
                });
              },
              items: devices
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.name!),
                      ))
                  .toList(),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                printer.connect(selectDevice!);
              },
              child: Text('Connnect'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                printer.disconnect();
              },
              child: Text('Disconnect'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                // NOTE : SIZE
                // Size
                // 0 = Normal
                // 1 = Normal - Bold
                // 2 = Medium - Bold
                // 3 = Large - Bold
                // Align
                // 0 = Left
                // 1 = Center
                // 2 = Right
                if ((await printer.isConnected)!) {
                  // printer.printNewLine();
                  printer.printCustom('Coffe Kita', 0, 0);
                  printer.printQRcode('Coffee Kita', 120, 120, 1);
                }
              },
              child: Text('Print'),
            ),
          ],
        ),
      ),
    );
  }
}
