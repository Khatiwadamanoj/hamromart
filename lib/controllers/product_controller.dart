
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../main_home_screen.dart/data/products_list.dart';
// import '../main_home_screen.dart/model/product_model.dart';

// class ProductNotifier extends StateNotifier<List<ProductModel>> {
//   ProductNotifier() : super(productItems);

//   // isSelect Change State

//   void isSelectItem(int pid, int index) {
//     state = [
//       for (final product in state)
//         if (product.pid == pid)
//           product.copyWith(isSelected: !state[index].isSelected)
//         else
//           product,
//     ];
//   }

//   void incrementQty(int pid) {
//     state = [
//       for (final product in state)
//         if (product.pid == pid)
//           product.copyWith(qty: product.qty += 1)
//         else
//           product,
//     ];
//   }

//   void decreaseQty(int pid) {
//     state = [
//       for (final product in state)
//         if (product.pid == pid)
//           product.copyWith(qty: product.qty -= 1)
//         else
//           product,
//     ];
//   }
// }

// final proudctNotifierProvider =
//     StateNotifierProvider<ProductNotifier, List<ProductModel>>((ref) {
//   return ProductNotifier();
// });