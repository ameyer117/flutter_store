import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'model/app_state_model.dart';

class ShoppingCartTab extends StatefulWidget {
  const ShoppingCartTab({Key? key}) : super(key: key);

  @override
  State<ShoppingCartTab> createState() => _ShoppingCartTabState();
}

class _ShoppingCartTabState extends State<ShoppingCartTab> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, value, child) {
        return const CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              largeTitle: Text("Shopping Cart"),
            ),
          ],
        );
      },
    );
  }
}
