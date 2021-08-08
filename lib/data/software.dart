import 'package:flutter/material.dart';

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
  String name;
  String description;
  int price;
  int lvl;
  double ram;
  double memory;
  double network;
  int state = 0;
  Antivirus(
      {required this.name,
      required this.description,
      required this.price,
      required this.lvl,
      required this.ram,
      required this.memory,
      required this.network})
      : super(
            name: name,
            description: description,
            price: price,
            lvl: lvl,
            ram: ram,
            memory: memory,
            network: network,
            icon: const Icon(Icons.analytics));
}

class Firewall extends Software {
  String name;
  String description;
  int price;
  int lvl;
  double ram;
  double memory;
  double network;
  int state = 0;
  Firewall(
      {required this.name,
      required this.description,
      required this.price,
      required this.lvl,
      required this.ram,
      required this.memory,
      required this.network})
      : super(
            name: name,
            description: description,
            price: price,
            lvl: lvl,
            ram: ram,
            memory: memory,
            network: network,
            icon: const Icon(Icons.fireplace));
}

class Spam extends Software {
  String name;
  String description;
  int price;
  int lvl;
  double ram;
  double memory;
  double network;
  int state = 0;
  Spam(
      {required this.name,
      required this.description,
      required this.price,
      required this.lvl,
      required this.ram,
      required this.memory,
      required this.network})
      : super(
            name: name,
            description: description,
            price: price,
            lvl: lvl,
            ram: ram,
            memory: memory,
            network: network,
            icon: const Icon(Icons.mail));
}

class Spyware extends Software {
  String name;
  String description;
  int price;
  int lvl;
  double ram;
  double memory;
  double network;
  int state = 0;
  Spyware(
      {required this.name,
      required this.description,
      required this.price,
      required this.lvl,
      required this.ram,
      required this.memory,
      required this.network})
      : super(
            name: name,
            description: description,
            price: price,
            lvl: lvl,
            ram: ram,
            memory: memory,
            network: network,
            icon: const Icon(Icons.visibility));
}

class Bypasser extends Software {
  String name;
  String description;
  int price;
  int lvl;
  double ram;
  double memory;
  double network;
  int state = 0;
  Bypasser(
      {required this.name,
      required this.description,
      required this.price,
      required this.lvl,
      required this.ram,
      required this.memory,
      required this.network})
      : super(
            name: name,
            description: description,
            price: price,
            lvl: lvl,
            ram: ram,
            memory: memory,
            network: network,
            icon: const Icon(Icons.backpack));
}

class PasswordEncryptor extends Software {
  String name;
  String description;
  int price;
  int lvl;
  double ram;
  double memory;
  double network;
  int state = 0;
  PasswordEncryptor(
      {required this.name,
      required this.description,
      required this.price,
      required this.lvl,
      required this.ram,
      required this.memory,
      required this.network})
      : super(
            name: name,
            description: description,
            price: price,
            lvl: lvl,
            ram: ram,
            memory: memory,
            network: network,
            icon: const Icon(Icons.password));
}

class PasswordCracker extends Software {
  String name;
  String description;
  int price;
  int lvl;
  double ram;
  double memory;
  double network;
  int state = 0;
  PasswordCracker(
      {required this.name,
      required this.description,
      required this.price,
      required this.lvl,
      required this.ram,
      required this.memory,
      required this.network})
      : super(
            name: name,
            description: description,
            price: price,
            lvl: lvl,
            ram: ram,
            memory: memory,
            network: network,
            icon: const Icon(Icons.password));
}
