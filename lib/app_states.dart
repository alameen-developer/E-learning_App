class AppStates{
  int counter;
  AppStates({required this.counter});
}

class InitStates extends AppStates{
  // InitStates({required super.counter});
  InitStates(): super(counter: -2);

}