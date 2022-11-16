part of 'home_page_bloc.dart';


 class HomePageState {
  final List<TodoModel> todoList;
  final List<TodoModel> todoListFavorite;



  HomePageState({ required this.todoListFavorite, required this.todoList});
}

class HomePageInitial extends HomePageState {
  
  HomePageInitial( {

    super.todoList =const <TodoModel>[],
    super.todoListFavorite = const <TodoModel>[],

  }) ;

}

class ChangeFavoriteSucess extends HomePageState {
  ChangeFavoriteSucess( {
     required  super.todoList,
      required  super.todoListFavorite,
  }) ;
  

}
class ChangeFavoriteToDoSucess extends HomePageState {

  ChangeFavoriteToDoSucess({
     required  super.todoList,
      required super.todoListFavorite,
  }) ;
  

}




class ChangeFavoriteFailure extends HomePageState {
  ChangeFavoriteFailure({
      required  super.todoList,
      required  super.todoListFavorite,
  }) ;
  


  
}
