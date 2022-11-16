part of 'home_page_bloc.dart';

abstract class HomePageEvent {}



class AddTodoEvent extends HomePageEvent {
  final TodoModel todo;

  AddTodoEvent({required this.todo});
}

class ChangeFavoriteToDo extends HomePageEvent {
  final TodoModel todo;
  ChangeFavoriteToDo({required this.todo});
}

