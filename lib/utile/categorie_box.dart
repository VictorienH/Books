import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategorieBox extends StatelessWidget {
  final String categorieName;
  final String iconPath;

  const CategorieBox({
    super.key,
    required this.categorieName,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //icon
              Image.asset(
                iconPath,
                height: 65,
              ),

              //categorie name + switch
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Text(
                        categorieName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      )),
                ],
              )
            ]),
      ),
    );
  }
}
