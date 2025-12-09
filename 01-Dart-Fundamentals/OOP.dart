class User {
  String name,email,password;
  int age;

  // Named Constructor
  User({required this.name, required this.email, required this.age, required this.password});

// getter
  String get getPassword {
    return password;
  }

  // setter
  set setNewPassword(String newPassowrd) {
    password = newPassowrd;
  }

  // method
  bool checkAge () {
    return age > 18;
  }


}

class Animal {

  String name;
  Animal(this.name);

  void sound(){
    print("Animal Sound");
  }
}


class Cat extends Animal {

  Cat(super.name);
  
  @override
  void sound() {
    print("meow");
  }

}

void main () {
  User user1 = User(name: 'osama', age: 18, email: "@", password: "123");
  // user1.setNewPassword;
  // print(user1.getPassword);


Cat c1 = Cat("animal");
  c1.sound();
}