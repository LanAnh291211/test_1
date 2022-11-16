import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_1/add_to_do.dart';

import 'bloc/home_page_bloc.dart';
import 'model/todo_model.dart';
import 'router.gr.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
            centerTitle: true,
          ),
          body: ListView.builder(
              itemCount: state.todoList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    state.todoList[index].title.toString(),
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  leading: IconButton(
                    icon: Icon(state.todoList[index].isFavorite ? Icons.favorite : Icons.favorite_border),
                    onPressed: () {
                      
                      context.read<HomePageBloc>().add(
                            ChangeFavoriteToDo(
                                todo: TodoModel(
                              id: state.todoList[index].id,
                              title: state.todoList[index].title,
                              isFavorite: !state.todoList[index].isFavorite,
                            )),
                          );
                    },
                  ),
                );
              }),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
             
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AddTodoPage()),
  );
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
