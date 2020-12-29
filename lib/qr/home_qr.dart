import 'package:flutter/material.dart';
import 'package:qrphoto/qr/QR%20Scanner/ScanQR.dart';
import 'package:qrphoto/ui/shared/ui_helper.dart';
import 'package:qrphoto/ui/widgets/button_widget.dart';
import 'QR Generator/QRGenerator.dart';
import 'QR Scanner/ScanQR.dart';

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("QR Scan/Generate"),
      ),
      body: Container(
        child: Container(
          height: (MediaQuery.of(context).size.height),

          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: (MediaQuery.of(context).size.height) -
                      AppBar().preferredSize.height -
                      kToolbarHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/QR.jpg",
                    ),
                    foregroundColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    radius: 150,
                  ),
                  Center(
                    child:Column(
                      children: <Widget>[
                        ButtonWidget(
                            title: "Scan QR",
                            onPressedFunction: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QRViewExample()));
                            }
                        ),
                        verticalSpaceTiny,
                        ButtonWidget(
                            title: "Generate QR",
                            onPressedFunction: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QRGenerator()));
                            }
                        )
                      ],
                    ),

                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
