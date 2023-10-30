import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';


class ImageScreen extends StatefulWidget {
  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  List<String> imageUrlList = [];
  @override

  String deviceName = "";


  void getDeviceName() async {
    // Use the `device_info` package to get the device name
    // This assumes you have already added the `device_info` package to your pubspec.yaml file
    var deviceInfo = await DeviceInfoPlugin().androidInfo;
    deviceName = deviceInfo.model!;
  }

  @override
  void initState() {
    super.initState();
    getDeviceName();
    getImages();
  }

  Future<void> getImages() async {
    final ListResult result = await FirebaseStorage.instance.ref().child('uploads/').listAll();
    final List<Reference> allFiles = result.items;
    final List<String> urlList = [];

    for (final Reference ref in allFiles) {
      final String downloadUrl = await ref.getDownloadURL();
      urlList.add(downloadUrl);
    }

    setState(() {
      imageUrlList = urlList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.0,),
        Text('Edible mushrooms found',style: TextStyle(fontSize: 20.0),),
        SizedBox(height: 20.0,),
        Expanded(
          child: Container(

            child: ListView.builder(

              itemCount: imageUrlList.length,
              itemBuilder: (BuildContext context, int index) {
                return
                  Container(
                    padding: EdgeInsets.all(25),
                    child: Image.network(
                      imageUrlList[index],
                      height: 350,
                      width: 300,
                    ),
                  );


              },
            ),



          ),
        ),
      ],
    );
  }
}