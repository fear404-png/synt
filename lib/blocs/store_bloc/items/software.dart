import 'package:flutter/material.dart';

class Software {
  int lvl;
  int price;
  final String description;
  final Icon iconSoft;

  Software(this.lvl, this.price, this.description, this.iconSoft);

    void upLvl(int count) {
    lvl += count;
  }
}
