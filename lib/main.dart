import 'package:flutter/material.dart';
import 'package:whatsappclone/whatsapp_home/home_page.dart';
//import 'package:camera/camera.dart';

//List<CameraDescription> cameras;

   //Future<void> main() async{
   //WidgetsFlutterBinding.ensureInitialized();
   //cameras= await availableCameras();
  void main(){
runApp(MaterialApp(
    title: 'WhatsApp',
    home:HomePage(),
    //home: HomePage(cameras:cameras),
    debugShowCheckedModeBanner: false,
  ));
}

