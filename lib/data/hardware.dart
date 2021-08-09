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
  final String description;
  final int price;
  final double props;

  RAM(this.description, this.price, this.props)
      : super(
            name: "RAM $props GB",
            description: description,
            price: price,
            props: props,
            icon: const Icon(Icons.hardware, color: AppColors.accent));
}

class Memory extends Hardware {
  final String description;
  final int price;
  final double props;

  Memory(this.description, this.price, this.props)
      : super(
            name: "Memory $props GB",
            description: description,
            price: price,
            props: props,
            icon: const Icon(Icons.memory, color: AppColors.accent));
}

class Network extends Hardware {
  final String description;
  final int price;
  final double props;

  Network(this.description, this.price, this.props)
      : super(
            name: "Network $props Mbit/s",
            description: description,
            price: price,
            props: props,
            icon: const Icon(Icons.web, color: AppColors.accent));
}

class CPU extends Hardware {
  final String description;
  final int price;
  final double props;

  CPU(this.description, this.price, this.props)
      : super(
            name: "CPU $props GFLOPS",
            description: description,
            price: price,
            props: props,
            icon: const Icon(Icons.apps, color: AppColors.accent));
}
