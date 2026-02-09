
import '../../../app_barrels.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(color: AppColors.primaryColor, offset: Offset(0, 2)),
        ],
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Obx(() {
        return Row(
          mainAxisAlignment: .spaceBetween,
          children: List.generate(controller.icons.length, (index) {
            return NavbarItem(
              icon: controller.icons[index],
              label: controller.labels[index],
              isSelected: controller.currentIndex.value == index,
              onTap: () => controller.changeTab(index),
            );
          }),
        );
      }),
    );
  }
}
