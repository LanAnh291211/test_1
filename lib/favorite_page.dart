import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/home_page_bloc.dart';
import 'model/todo_model.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Favorite'),
            centerTitle: true,
          ),
          body: ListView.builder(
            itemCount: state.todoListFavorite.length,
            itemBuilder: (context, index) {
             List<TodoModel> todolistfa = state.todoListFavorite;

              return ListTile(
                title: Text(
                  todolistfa[index].title.toString(),
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                leading: IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {
                    context.read<HomePageBloc>().add(
                          ChangeFavoriteToDo(
                              todo: TodoModel(
                            id: todolistfa[index].id,
                            title: state.todoListFavorite[index].title,
                            isFavorite: !todolistfa[index].isFavorite,
                          )),
                        );
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
