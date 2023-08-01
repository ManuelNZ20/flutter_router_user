import 'package:flutter/material.dart';
import 'package:router_basic_app/presentation/shared/custom_text.dart';
class CardUser extends StatelessWidget {
  
  final String imgUrl;
  final String name;
  final String typeUser;

  const CardUser({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.typeUser
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      height: size.height*.105,
      child: Card(
        color: colors.secondaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: colors.outlineVariant,
            strokeAlign: 0.1
          )
        ),
        elevation: 0,
        child: ListTile(
          leading:CircleAvatar(
            maxRadius: size.width*.07,
            backgroundImage: NetworkImage(imgUrl),
          ),
          title: CustomText(text: name, fontSize: 20),
          subtitle: CustomText(text: typeUser, fontSize: 20,fontWeight: FontWeight.w100,),
        ),
      ),
    );
  }
}