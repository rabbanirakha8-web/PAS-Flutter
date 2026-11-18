
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_flutter/models/premier_league_model.dart';

class ListTeamController extends GetxController{

var teamList = <Team>[].obs;

@override
  void onInit() {
    super.onInit();
    fetchTeam(); 
  }

   void fetchTeam() async {
    try {
      
      
      final url = Uri.parse(' https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=English%20Premier%20League');


      final response = await http.get(url);
      
      if (response.statusCode == 200) {

        Get.snackbar("berhasil memuat data gadget", "Data gadget berhasil dimuat");
        
       
        teamList.value = premierLeagueModelFromJson(response.body) as List<Team>;
      } else {
        Get.snackbar("gagal", "cek internet connection");
      }
    } catch (e) {
      Get.snackbar("gagal", "Terjadi kesalahan: $e");
    } 
  }

}