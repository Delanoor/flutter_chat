import 'package:firebase_chat/common/values/colors.dart';
import 'package:firebase_chat/common/values/shadows.dart';
import 'package:firebase_chat/common/widgets/button.dart';
import 'package:firebase_chat/pages/application/controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../contact/view.dart';

class ApplicationPage extends GetView<ApplicationController> {
  const ApplicationPage({super.key});

  Widget _buildPageView() {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: controller.pageController,
      onPageChanged: controller.handlePageChanged,
      children: [
        Center(
          child: Text("chat"),
        ),
        ContactPage(),
        Center(
          child: Text("profile"),
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return Obx(() => BottomNavigationBar(
          items: controller.bottomTabs,
          currentIndex: controller.state.page,
          type: BottomNavigationBarType.fixed,
          onTap: controller.handleNavBarTap,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: AppColors.tabBarElement,
          selectedItemColor: AppColors.thirdElementText,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageView(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
