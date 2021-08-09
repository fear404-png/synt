import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

abstract class Software {
  String name;
  String description;
  int price;
  int lvl;
  double ram;
  double memory;
  double network;
  int state = 0;
  Icon icon;

  Software(
      {required this.name,
      required this.description,
      required this.price,
      required this.lvl,
      required this.ram,
      required this.memory,
      required this.network,
      required this.icon});
}

class Antivirus extends Software {
  String description;
  int price;
  int lvl;
  double ram;
  double memory;
  double network;
  int state = 0;
  Antivirus(
      {required this.description,
      required this.price,
      required this.lvl,
      required this.ram,
      required this.memory,
      required this.network})
      : super(
            name: "Antivirus $lvl lvl",
            description: description,
            price: price,
            lvl: lvl,
            ram: ram,
            memory: memory,
            network: network,
            icon: const Icon(Icons.analytics, color: AppColors.accent));
}

class Firewall extends Software {
  String description;
  int price;
  int lvl;
  double ram;
  double memory;
  double network;
  int state = 0;
  Firewall(
      {required this.description,
      required this.price,
      required this.lvl,
      required this.ram,
      required this.memory,
      required this.network})
      : super(
            name: "Firewall $lvl lvl",
            description: description,
            price: price,
            lvl: lvl,
            ram: ram,
            memory: memory,
            network: network,
            icon: const Icon(
              Icons.fireplace,
              color: AppColors.accent,
            ));
}

class Spam extends Software {
  String description;
  int price;
  int lvl;
  double ram;
  double memory;
  double network;
  int state = 0;
  Spam(
      {required this.description,
      required this.price,
      required this.lvl,
      required this.ram,
      required this.memory,
      required this.network})
      : super(
            name: "Spam $lvl lvl",
            description: description,
            price: price,
            lvl: lvl,
            ram: ram,
            memory: memory,
            network: network,
            icon: const Icon(Icons.mail, color: AppColors.accent));
}

class Spyware extends Software {
  String description;
  int price;
  int lvl;
  double ram;
  double memory;
  double network;
  int state = 0;
  Spyware(
      {required this.description,
      required this.price,
      required this.lvl,
      required this.ram,
      required this.memory,
      required this.network})
      : super(
            name: "Spyware $lvl lvl",
            description: description,
            price: price,
            lvl: lvl,
            ram: ram,
            memory: memory,
            network: network,
            icon: const Icon(Icons.visibility, color: AppColors.accent));
}

class Bypasser extends Software {
  String description;
  int price;
  int lvl;
  double ram;
  double memory;
  double network;
  int state = 0;
  Bypasser(
      {required this.description,
      required this.price,
      required this.lvl,
      required this.ram,
      required this.memory,
      required this.network})
      : super(
            name: "Bypasser $lvl lvl",
            description: description,
            price: price,
            lvl: lvl,
            ram: ram,
            memory: memory,
            network: network,
            icon: const Icon(Icons.backpack, color: AppColors.accent));
}

class PasswordEncryptor extends Software {
  String description;
  int price;
  int lvl;
  double ram;
  double memory;
  double network;
  int state = 0;
  PasswordEncryptor(
      {required this.description,
      required this.price,
      required this.lvl,
      required this.ram,
      required this.memory,
      required this.network})
      : super(
            name: "Encryptor $lvl lvl",
            description: description,
            price: price,
            lvl: lvl,
            ram: ram,
            memory: memory,
            network: network,
            icon: const Icon(Icons.password, color: AppColors.accent));
}

class PasswordCracker extends Software {
  String description;
  int price;
  int lvl;
  double ram;
  double memory;
  double network;
  int state = 0;
  PasswordCracker(
      {required this.description,
      required this.price,
      required this.lvl,
      required this.ram,
      required this.memory,
      required this.network})
      : super(
            name: "Cracker $lvl lvl",
            description: description,
            price: price,
            lvl: lvl,
            ram: ram,
            memory: memory,
            network: network,
            icon: const Icon(Icons.password, color: AppColors.accent));
}
