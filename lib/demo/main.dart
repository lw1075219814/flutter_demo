class A {
  void todoA() {}
}

class B {
  void todoB() {}
}

abstract class C {
  void todoC();
}

class D extends A with B implements C {

  void todo(){
    super.todoA();
    super.todoB();
  }

  @override
  void todoC() {
    // TODO: implement todoC
  }
}

void main(){
}
