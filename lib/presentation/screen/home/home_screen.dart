import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_basic_app/config/helper/menu/menu_item.dart';
import '../../shared/button_router.dart';
import '../../shared/card_user.dart';
import '../../shared/custom_text.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: CustomText(
          text: 'PARAMETROS',
          fontSize: 30,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.close,
                size: 40,
                color: colors.primary,
              ))
        ],
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        CardUser(
            imgUrl:
                'https://i.pinimg.com/474x/c2/4b/93/c24b93d9ca0b94291368cacded0d73f1.jpg',
            name: 'John Doe',
            typeUser: 'Candidant'),
       SizedBox(
        height: size.height*.02,
       ),
        SizedBox(
          width: size.width,
          height: size.height * .72,
          child: ListView.builder(
            itemCount: appMenuItem.length,
            itemBuilder: (context, index) {
              final menuItem = appMenuItem[index];
              return ButtonRouter(
                menuItem: menuItem,
                onPressed: (){
                  context.push(menuItem.link);
                },);
            },
          ),
        )
      ]),
    );
  }
}

