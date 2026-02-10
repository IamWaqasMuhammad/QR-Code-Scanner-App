
import '../../../app_barrels.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(controller.icons.length, (index) {
          return NavbarItem(
            icon: controller.icons[index],
            label: controller.labels[index],
            isSelected: controller.currentIndex.value == index,
            onTap: () => controller.changeTab(index),
          );
        }),
      );
    });
  }
}
