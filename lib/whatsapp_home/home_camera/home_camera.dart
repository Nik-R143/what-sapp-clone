import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
//import 'package:whatsappclone/home_page.dart';
//import 'package:camera/whatsapp_home.home_camera.dart';

class Whcamera extends StatefulWidget {
  // List<CameraDescription> cameras;
  // Whcamera(this.cameras);
  @override
  _WhcameraState createState() => _WhcameraState();
}

class _WhcameraState extends State<Whcamera> {
  @override
  Widget build(BuildContext context) {
//  CameraController controller;
//
//   @override
//   void initState() {
//     super.initState();
//     controller=new CameraController(widget.cameras[0], ResolutionPreset.medium);
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     });
//   }
//
//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
//  @override
//  Widget build(BuildContext context) {
//    if (!controller.value.isInitialized) {
//      return Container();
//    }
//    return AspectRatio(
//        aspectRatio:
//        controller.value.aspectRatio,
//        child: CameraPreview(controller));
//  }
// }}


//   @override
//   Widget build(BuildContext context) {
//     if(!controller.value.isInitialized){
//       return new Container();
//     }
//     return new AspectRatio(
//       aspectRatio: controller.value.aspectRatio,
//       child: new CameraPreview(controller),
//     );
//   }
// }

    return Card(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.camera_alt_rounded),
          backgroundColor: Colors.green[600],
        ),
      ),
    );
  }}



