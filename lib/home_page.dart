import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter/app_storage.dart';
import 'package:learn_flutter/l10n/generated/l10n.dart';
import 'package:learn_flutter/login_controller.dart';

class HomePage extends StatelessWidget{

  dynamic arguments = Get.arguments;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(gradient: LinearGradient(
                                          begin: Alignment.topLeft, 
                                          end: Alignment.bottomRight,
                                          colors: [Colors.amber,Colors.amber.shade50])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {

            //loginController.setInputEmail("duykhangp7@gmail.com");
            Get.back();
        
          }, child: Text(SLocation.of(context).change_email)),
          ElevatedButton(onPressed: () async {
            
            await Get.updateLocale(const Locale("en"));
            AppStorage.saveLanguages("en");
            Get.back();
        
          }, child: Text(SLocation.of(context).lang_english)),
          ElevatedButton(onPressed: () async {

            await Get.updateLocale(const Locale("vi"));
            AppStorage.saveLanguages("vi");
            Get.back();
        
          }, child: Text(SLocation.of(context).lang_vietnamese)),
        ],
      )
    );
  }

}