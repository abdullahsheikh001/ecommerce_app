import 'package:ecommerce_app/Getxstate/favoritestate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Favoritescreen extends StatelessWidget {
  const Favoritescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final FavoriteController favoritesController = Get.put(FavoriteController());
    return Scaffold(
      appBar: AppBar(title: const Text('Favorites')),
      body: Obx(() {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: favoritesController.favorites.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(favoritesController.favorites[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.remove_circle),
                      onPressed: () {
                        favoritesController.toggleFavorite(
                            favoritesController.favorites[index]);
                      },
                    ),
                  );
                },
              ),
            ),

            
          ],
        );
      }),
    );
  }
}
