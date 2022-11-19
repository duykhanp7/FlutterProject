import 'package:get/get.dart';

class LoginController extends GetxController with StateMixin<String>{

  var inputEmail = RxString("");
  var inputPassword = RxString("");

  setInputEmail(String input) => {
    print("Email Change"),
    inputEmail.value = input
  } ;
  setInputPassword(String input) => {
    print("Password Change"),
    inputPassword.value = input 
  };
  authenticateAccount() =>{
    if(inputEmail.value.isNotEmpty && inputPassword.value.isNotEmpty && inputEmail.value == "abc@gmail.com" && inputPassword.value == "12345678"){
      Get.toNamed("/HomePage",arguments: [{"email":"duykhangp7@gmail.com","password":"190401adAD@"}])
    }
  };

}