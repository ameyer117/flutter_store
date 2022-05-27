import 'package:cupertino_store/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    required this.controller,
    required this.focusNode,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Styles.searchBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        child: Row(children: [
          const Icon(
            CupertinoIcons.search,
            color: Styles.searchIconColor,
          ),
          Expanded(
            child: CupertinoTextField(
              placeholder: "Search...",
              controller: controller,
              focusNode: focusNode,
              style: Styles.searchText,
              cursorColor: Styles.searchCursorColor,
              decoration: null,
            ),
          ),
          if (controller.text.isNotEmpty)
            GestureDetector(
              onTap: controller.clear,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  CupertinoIcons.clear_thick_circled,
                  color: Styles.searchIconColor,
                ),
              ),
            )
        ]),
      ),
    );
  }
}
