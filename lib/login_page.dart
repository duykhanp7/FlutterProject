import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter/l10n/generated/l10n.dart';
import 'package:learn_flutter/login_controller.dart';

class LoginPage extends GetView<LoginController>{

  //final LoginController controller = Get.put(LoginController());
  TextEditingController _inputEmailController = TextEditingController();
  TextEditingController _inputPasswordController = TextEditingController();

  LoginPage({super.key});
  
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   systemOverlayStyle: const SystemUiOverlayStyle(
      //   statusBarColor: Colors.transparent,
      //   statusBarIconBrightness: Brightness.dark),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: const Text("Flutter Widget",style: TextStyle(color: Colors.black),),
      //   centerTitle: true,),
      body: Container(
        decoration: BoxDecoration(color: Colors.amber.shade100),
        alignment: Alignment.center,
        child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text(SLocation.of(context).welcome_back,style: TextStyle(fontStyle: FontStyle.normal,fontSize: 25,fontWeight: FontWeight.bold),),
            Obx(() => Text(SLocation.of(context).email_input+controller.inputEmail.value)),
            Obx(() => Text(SLocation.of(context).password_input+controller.inputPassword.value)),
            const Padding(padding: EdgeInsets.only(top: 20),),
            SizedBox(
              height: 50,
              child: Container(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: CupertinoTextField(
                  placeholder: SLocation.of(context).enter_your_email,
                  textAlign: TextAlign.start,
                  controller: _inputEmailController,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) => controller.setInputEmail(value),
                ),
            ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            SizedBox(
              height: 50,
              child: Container(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child:  CupertinoTextField(
                  placeholder: SLocation.of(context).enter_your_password,
                  textAlign: TextAlign.start,
                  obscureText: true,
                  autocorrect: false,
                  controller: _inputPasswordController,
                  onChanged: (value) => controller.setInputPassword(value),
                ),
            ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.amber.shade400)),
              onPressed: () {
                controller.authenticateAccount();
            }, child: Container(
              width: 80,
              alignment: Alignment.center,
              child:  Text(SLocation.of(context).login_button_text),
            ))
          ],
         ),
      ),
    );
  }


}
