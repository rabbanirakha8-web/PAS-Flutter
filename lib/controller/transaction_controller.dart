import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:pas_flutter/pages/login_page.dart';

class TransactionController extends GetxController{
TextEditingController jumlahController = TextEditingController();

late String nama;
late String deskripsi;
late String imageUrl;
late int harga;

final double taxRate = 11.0;
final double hasil = 0.0;

@override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['nama'];
    imageUrl = arguments['gambar'];
    harga = arguments['harga'];
    deskripsi = arguments['deskripsi'];
   
    
  }



  
}