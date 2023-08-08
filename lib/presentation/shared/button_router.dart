import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:router_basic_app/presentation/providers/theme_provider.dart';
import 'package:router_basic_app/presentation/shared/custom_text.dart';
import '../../config/helper/menu/menu_item.dart';

class ButtonRouter extends ConsumerWidget {
  const ButtonRouter(
      {super.key, required this.menuItem, required this.onPressed});

  final MenuItem menuItem;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final isDarkMode = ref.watch(themeProvider).isDarkMode;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25.0),
          child: Row(
            children: [
                IconButton.filledTonal(
                  onPressed: onPressed,
                  icon: Icon(
                    menuItem.title=='Theme'?
                    isDarkMode?menuItem.iconData:Icons.light_mode_outlined
                    :menuItem.iconData,
                  ),
                  color: colors.primary,
                ),

              //Texto
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: CustomText(text: menuItem.title, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
