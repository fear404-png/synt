import 'package:flutter/material.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class InventoryItem extends StatelessWidget {
  final String name;
  final String description;
  final Icon icon;

  const InventoryItem({
    Key? key,
    required this.name,
    required this.description,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          CustumContainer(
              width: 45,
              height: 45,
              child: icon,
              crossAxisAlignment: CrossAxisAlignment.center),
          AppPaddings.defaultSizedBoxWidth,
          Expanded(
              child: CustumContainer(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: AppTextStyle.textStyleHeader,
                          maxLines: 1,
                        ),
                        Text(
                          description,
                          style: AppTextStyle.textStyle,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                  height: 45)),
        ],
      ),
    );
  }
}
