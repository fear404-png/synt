import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

 class Hardware {
  final String name;
  final String description;
  final int price;
  final double props;
  final Icon icon;

  Hardware(
      {required this.name,
      required this.description,
      required this.price,
      required this.props,
      required this.icon});
}

class RAM extends Hardware {
  final String name;
  final String description;
  final int price;
  final double props;

  RAM(this.name, this.description, this.price, this.props)
      : super(
            name: name,
            description: description,
            price: price,
            props: props,
            icon: const Icon(Icons.hardware, color: AppColors.accent));
}

class Memory extends Hardware {
  final String name;
  final String description;
  final int price;
  final double props;

  Memory(this.name, this.description, this.price, this.props)
      : super(
            name: name,
            description: description,
            price: price,
            props: props,
            icon: const Icon(Icons.memory, color: AppColors.accent));
}

class Network extends Hardware {
  final String name;
  final String description;
  final int price;
  final double props;

  Network(this.name, this.description, this.price, this.props)
      : super(
            name: name,
            description: description,
            price: price,
            props: props,
            icon: const Icon(Icons.web, color: AppColors.accent));
}

class CPU extends Hardware {
  final String name;
  final String description;
  final int price;
  final double props;

  CPU(this.name, this.description, this.price, this.props)
      : super(
            name: name,
            description: description,
            price: price,
            props: props,
            icon: const Icon(Icons.apps, color: AppColors.accent));
}
