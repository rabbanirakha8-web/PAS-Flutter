import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_flutter/controller/list_team_controller.dart';


class FeatPage extends StatelessWidget {
 FeatPage({super.key});

  final ListTeamController controller = Get.put(ListTeamController());

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Team')),
      body: Obx(() {
      
        
        return ListView.builder(
          itemCount: controller.teamList.length,
          itemBuilder: (context, index) {
            final teams = controller.teamList[index];
            
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Image.network(
                  teams.strBadge,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  teams.strTeam,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                 subtitle: Text(teams.strStadium),
                

               
                
//         
              ),
            );
          },
        );
      }),
    );
  }
}