import 'package:get/get.dart';
import 'package:pas_flutter/pages/first_page.dart';
import 'package:pas_flutter/pages/test.dart';


class Routes {

static const String firstpage = "/firstpage";
static const String testingpage = "/testing";

static final myPages = [

  GetPage(name: firstpage, page: ()=> FirstPage()),
  GetPage(name: testingpage, page: ()=> Testing()),
];





}