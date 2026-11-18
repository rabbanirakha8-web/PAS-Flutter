import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_flutter/routes.dart';
import 'package:pas_flutter/models/login_model.dart';


class LoginController extends GetxController{
 TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

   var loginModel = Rxn<LoginModel>();

  //method hit API
  void login() async{
    if(txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty){
      Get.snackbar("Error", "Username dan Password tidak boleh kosong");

    }else{
      
      try{
        isLoading.value = true;//sebagai tanda kemunculan loading di widget
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(url,body:{
          "username": txtUsername.text.toString(),
          "password": txtPassword.text.toString()
        });

        
          isLoading.value = false;
        if(response.statusCode == 200){
          // kita ambil jsonnya message pindah tampilan ke main menu
          // contoh json yang paling sederhana, next pertemuan json yang kompleks

          loginModel.value = loginModelFromJson(response.body);
          
          if(loginModel.value?.status == true || loginModel.value?.message == true || loginModel.value?.token == true){
            Get.snackbar("berhasil", loginModel.value!.message.toString());
            Get.offAllNamed(Routes.menudrawerpage);
            
          }else{
            Get.snackbar("gagal", loginModel.value!.message.toString());
          }

        }else{
          Get.snackbar("gagal", "cek internet connection");
        }

      }catch(e){
        Get.snackbar("Gagal", e.toString());
        print("error: " +   e.toString());
      }
    }
  }


}
