import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:test_1/model/todo_model.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageInitial(
       
      
  
  )) {
    
    on<AddTodoEvent>(onAddTodoEvent);
    on<ChangeFavoriteToDo>(onChangeFavoriteToDo);


    


  }



  FutureOr<void> onAddTodoEvent(AddTodoEvent event, Emitter<HomePageState> emit) {
    emit(
        HomePageInitial(
          
          todoList: List.from(state.todoList)..insert(0,event.todo),
          todoListFavorite: state.todoListFavorite,
        ),
      );
  }

  FutureOr<void> onChangeFavoriteToDo(ChangeFavoriteToDo event, Emitter<HomePageState> emit) {
    
       List<TodoModel> todos = state.todoList.map((todo) => todo.id == event.todo.id ? event.todo : todo).toList();


        emit(
          ChangeFavoriteToDoSucess(
            todoList: todos,

       
            todoListFavorite: event.todo.isFavorite ? (List.from(state.todoListFavorite)..insert(0,event.todo)) : todos.where((element) => element.isFavorite).toList(),
         

          ),
        );
     
      
     
  }

  
}
