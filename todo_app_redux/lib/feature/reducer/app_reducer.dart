
import 'package:vn/feature/reducer/todo_reducer.dart';
import 'package:vn/model/app_state.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    todos: todosReducer(state.todos, action),
  );
}
