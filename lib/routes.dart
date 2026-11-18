import 'package:get/get.dart';
import 'package:pas_flutter/pages/first_page.dart';
import 'package:pas_flutter/pages/test.dart';
import 'package:pas_flutter/pages/login_page.dart';
import 'package:pas_flutter/pages/menu_drawer_page.dart';
import 'package:pas_flutter/pages/transaction_page.dart';


class Routes {

static const String firstpage = "/firstpage";
static const String testingpage = "/testing";
static const String loginpage = "/loginpage";
static const String menudrawerpage = "/menudrawerpage";
static const String transactionpage = "/transactionpage";


static final myPages = [

  GetPage(name: firstpage, page: ()=> FirstPage()),
  GetPage(name: testingpage, page: ()=> Testing()),
  GetPage(name: loginpage, page: ()=> LoginPage()),
  GetPage(name: menudrawerpage, page: ()=> MenuDrawerPage()),
  GetPage(name: transactionpage, page: ()=> TransactionPage()),

];





}