import 'package:cupertino_store/model/app_state_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  return runApp(
    ChangeNotifierProvider<AppStateModel>(
      create: ((context) => AppStateModel()..loadProducts()),
      child: const CupertinoStoreApp(),
    ),
  );
}
