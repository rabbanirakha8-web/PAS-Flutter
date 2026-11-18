import 'package:flutter/material.dart';
// import 'package:pas_flutter/controller/menu_drawer_controller.dart';
import 'package:get/get.dart';

import 'package:pas_flutter/menu/feat_page.dart';
import 'package:pas_flutter/menu/home_page.dart';
import 'package:pas_flutter/menu/profile_page.dart';

class MenuDrawerController extends GetxController{

 final RxInt selectedIndex = 0.obs;



  void changePage(int index) {
    selectedIndex.value = index;
  }


  List<Widget> listPages = [FeatPage(), HomePage(),  ProfilePage()];

}