import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:vn/feature/reducer/app_reducer.dart';
import 'package:redux/redux.dart';
import 'feature/home_page.dart';
import 'feature/middleware/todo_middleware.dart';
import 'model/app_state.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: Store<AppState>(
        appReducer,
        initialState: AppState(),
        middleware: createStoreTodosMiddleware(),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Redux Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      ),
    );
  }
}
