import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:project_kelompok_mobile/pages/storyAdd.dart';
import '../providers/addStory.dart';

class DetailPlayer extends StatelessWidget {
  static const routeName = "/storyDetail";

  @override
  Widget build(BuildContext context) {
    final players = Provider.of<Players>(context, listen: false);
    final playerId = ModalRoute.of(context)?.settings.arguments as String;
    final selectPLayer = players.selectById(playerId);
    final TextEditingController imageController =
        TextEditingController(text: selectPLayer.imageUrl);
    final TextEditingController nameController =
        TextEditingController(text: selectPLayer.name);
    final TextEditingController positionController =
        TextEditingController(text: selectPLayer.position);
    return Scaffold(
      appBar: AppBar(
        title: Text("DETAIL STORY"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 101, 139, 255),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageController.text),
                    ),
                  ),
                ),
              ),
              TextFormField(
                autocorrect: false,
                autofocus: true,
                decoration: InputDecoration(labelText: "Nama"),
                textInputAction: TextInputAction.next,
                controller: nameController,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Posisi"),
                textInputAction: TextInputAction.next,
                controller: positionController,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Image URL"),
                textInputAction: TextInputAction.done,
                controller: imageController,
                onEditingComplete: () {
                  players.editPlayer(
                    playerId,
                    nameController.text,
                    positionController.text,
                    imageController.text,
                    
                  );
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: OutlinedButton(
                  onPressed: () {
                    players.editPlayer(
                      playerId,
                      nameController.text,
                      positionController.text,
                      imageController.text,
                      
                    );
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Edit",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}