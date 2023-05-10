// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../core/ui/helpers/size_extensions.dart';
import './menu/menu_bar.dart' as menu;

class BaseLayout extends StatelessWidget {
  final Widget body;

  const BaseLayout({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = context.screenWidth;
    final shortestSide = context.screenShortestSide;
    return Scaffold(
      body: SizedBox(
        height: context.screenHeight,
        child: Stack(
          children: [
            Container(
              color: Colors.black,
              constraints: BoxConstraints(
                minWidth: screenWidth,
                minHeight: shortestSide * .15,
                maxHeight: shortestSide * .15,
              ),
              alignment: Alignment.centerLeft,
              child: Container(
                width: shortestSide * .13,
                margin: const EdgeInsets.only(left: 60),
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
            ),
            Positioned.fill(
              top: shortestSide * .13,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(15),
                    right: Radius.circular(15),
                  ),
                ),
                child: Row(
                  children: [
                    const menu.MenuBar(),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 20),
                        color: Colors.grey[50],
                        child: body,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
