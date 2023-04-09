import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuSController extends GetxController {
  /// List of string for favourite games
  RxList<String> favouriteGamesList = RxList(['CS GO', 'Dota 2', 'Fortnite']);

  /// List of string for subscriptions
  RxList<String> subscriptionList =
      RxList(['Old School Games', 'Maxim', 'Mob Leg Master']);

  /// List of Map containing Playlist and favuorites and their count
  RxMap<String, int> miscList = RxMap({'Playlist': 24, 'Favourites': 8});

  /// List containing misc Icon Data
  RxList<IconData> miscListIcon =
      RxList([Icons.playlist_play, Icons.star_border_outlined]);

  RxBool favouriteGameTileExpanded = RxBool(false);
  RxBool subscriptionTileExpanded = RxBool(false);

  /// For turning the trailing icon in expansion list tile
  void onExpansionChange(bool value) {
    favouriteGameTileExpanded(value);
  }
}
