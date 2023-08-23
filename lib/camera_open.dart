import 'package:flutter/material.dart';
import 'package:camera/camera.dart';


class CameraOpen extends StatefulWidget {
  CameraOpen({Key? key}): super(key: key);

  @override
  _CamperaOpenState createState() => _CamperaOpenState();
}

class _CamperaOpenState extends State<CameraOpen> {
  List<CameraDescription> camera =[];
  CameraController? cameraController;
  XFile? imagem;
  Size? size;

  @override
  void initState(){
    super.initState();
    _loadCamera();
  }
  _loadCamera()async{
    try{
      camera = await availableCameras();
      _startCamera();
    }on CameraException catch (e){
      print(e.description);
    }
  }
  _startCamera(){
    if(camera.isEmpty){
      print("Camera não encontrada");
    }else{
      _previewCamera(camera.first);
    }
  }
  _previewCamera(CameraDescription camera) async{
    final CameraController camController = CameraController(
      camera,
      ResolutionPreset.high,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.jpeg
    );
    try{
      await camController.initialize();
    }on CameraException catch (e) {
      print(e.description);
    }
    if(mounted){
      setState(() {});
    }
  }
  @override
  Widget build(BuildContext context){
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Abriu Camera"),
        backgroundColor: Colors.grey,
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
