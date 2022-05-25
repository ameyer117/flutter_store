import 'package:flutter/cupertino.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          largeTitle: Text("Search"),
        ),
      ],
    );
  }
}
