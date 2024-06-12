import 'package:flutter/material.dart';
import 'package:settings_page/viewmodels/cart_view_model.dart';
import 'package:settings_page/views/widgets/custom_list_view_builder_container.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CartViewModel.fav.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomListViewBuilderContainer(
            course: CartViewModel.fav[index],
            isViewStylePressed: false,
            isDelete: false,
          ),
        );
      },
    );
  }
}
