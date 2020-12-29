import 'package:qrphoto/constants/helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qrphoto/ui/shared/colors_helper.dart';
import 'package:qrphoto/ui/shared/shared_style.dart';
import 'package:qrphoto/ui/shared/ui_helper.dart';
import 'package:qrphoto/ui/views/camera_view.dart';
//import 'package:qrphoto/viewmodels/home_view_model.dart';
//import 'package:provider_architecture/provider_architecture.dart';
import 'package:stacked/stacked.dart';
import 'package:qrphoto/ui/widgets/button_widget.dart';
import 'package:qrphoto/qr/home_qr.dart';
import 'package:image_picker/image_picker.dart';

// import flutter services
import 'package:flutter/services.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int page;

  @override
  Widget build(BuildContext context) {
    // Lock Orientation Portait Only
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return Scaffold(
      appBar: AppBar(title: Text("Photo QR"),),
      body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  verticalSpaceMassive,
                  ButtonWidget(
                      title: "Photo",
                      onPressedFunction: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CameraView()
                          ));
                      },
                  ),
                  verticalSpaceTiny,
                  ButtonWidget(
                      title: "QR Code",
                      onPressedFunction: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()
                            ));
                      },
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
