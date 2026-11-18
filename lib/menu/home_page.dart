import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:pas_flutter/routes.dart';

import '../controller/list_produk_controller.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});


  final controller = Get.put(ListProdukController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Home Page"),
      ),body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 240, 
              child: Obx(
                () => ListView.builder(
                  scrollDirection: Axis.horizontal, 
                  itemCount: controller.listProduk.length,
                  itemBuilder: (context, index) {
                    final produk = controller.listProduk[index];

                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          Routes.transactionpage,
                          arguments: {
                            'nama': produk.nama,
                            'gambar': produk.imageUrl,
                            'harga': produk.harga,
                            'deskripsi': produk.deskripsi,
                            
                          },
                        );
                      }, 
                      child: Container(
                        width: 140,
                        margin: const EdgeInsets.only(right: 12),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 53, 110, 255),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 110,
                              margin: const EdgeInsets.only(bottom: 8),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                              ),
                              child: Image.network(
                                produk.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 4),
                              child: Text(
                                produk.nama,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                           
                           
                          ],
                        ),
                      ),
                    ); 
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}