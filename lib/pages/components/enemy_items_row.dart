import 'package:flutter/material.dart';
import 'package:synt/pages/components/enemy_item.dart';

class EnemyItemsRow extends StatelessWidget {
  const EnemyItemsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        EnemyItem(),
        EnemyItem(),
        EnemyItem(),
      ],
    );
  }
}
