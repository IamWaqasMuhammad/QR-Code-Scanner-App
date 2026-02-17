import '../../../app_barrels.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Scaffold(
      backgroundColor: AppColors.bgColor,

      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,
          children: controller.screens,
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: const HomeMainFAB(),

      bottomNavigationBar: const HomeBottomNavBar(),
    );
  }
}
