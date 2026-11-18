import 'package:get/get.dart';
import 'package:pas_flutter/models/produk_model.dart';

class ListProdukController extends GetxController {

RxList<ProdukModel> initialData = [
ProdukModel(
  nama: "Nasgor Special",
  deskripsi: "Nasi goreng bumbu rempah dengan telur mata sapi,ayam suwir, dan kerupuk",
  imageUrl: "https://dlcdnwebimgs.asus.com/gain/9F61B91D-630F-473B-8A9A-A947A2A567B5/w750/h470/fwebp",
  harga: 1000,


),
ProdukModel(
  nama: "Ayam Bakar Madu",
  deskripsi: "Ayam bakar olesan madu murni lengkap dengan sambalterasi dan lalapan.",
  imageUrl: "https://dlcdnwebimgs.asus.com/gain/9F61B91D-630F-473B-8A9A-A947A2A567B5/w750/h470/fwebp",
  harga: 30000,


),
ProdukModel(
  nama: "Sate Ayam Madura",
  deskripsi: "10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.",
  imageUrl: "https://dlcdnwebimgs.asus.com/gain/9F61B91D-630F-473B-8A9A-A947A2A567B5/w750/h470/fwebp",
  harga: 28000,


),
ProdukModel(
  nama: "Mie Ayam Bakso ",
  deskripsi: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",

  imageUrl: "https://dlcdnwebimgs.asus.com/gain/9F61B91D-630F-473B-8A9A-A947A2A567B5/w750/h470/fwebp",
  harga: 20000,


),





].obs;

var listProduk = <ProdukModel>[].obs;

  @override
  void onInit() {
    super.onInit();
  
    listProduk.assignAll(initialData);
  }

  //buat ngulang data awal
  Future<void> refreshData() async {
    await Future.delayed(const Duration(seconds: 1));
    listProduk.assignAll(initialData); 
  }

}