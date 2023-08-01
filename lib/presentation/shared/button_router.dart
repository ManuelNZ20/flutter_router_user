import 'package:flutter/material.dart';
import 'package:router_basic_app/presentation/shared/custom_text.dart';
import '../../config/helper/menu/menu_item.dart';

class ButtonRouter extends StatelessWidget {
  const ButtonRouter({
    super.key,
    required this.menuItem,
    required this.onPressed
  });

  final MenuItem menuItem;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 3.0
      ),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,horizontal: 25.0
          ),
          child: Row(
            children: [
              IconButton.filledTonal(
                onPressed: onPressed, 
                icon: Icon(menuItem.iconData,
                ),
                  color: colors.primary,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15
                  ),
                  child: CustomText(text: menuItem.title, fontSize: 20),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
