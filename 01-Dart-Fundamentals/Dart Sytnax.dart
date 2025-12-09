// int add (int a, int b) {
//   return a+b;
// }

// int add (int a, int b) => a+b;

void userData ({String? name,required int age,required String email}) {

}


void add (int a, int b, [int? c]) {
  print(a + b + (c ?? 0));
}

void checkAge(int age) {
  if (age < 18) throw("Young person");
}

Future<String> fectchUserData () async {
  print("..Loading");
  await Future.delayed(Duration(seconds: 2));
  return "User Data Loaded";
}

void main () async {

  print(await fectchUserData());


  // userData(email: "iiosa", age: 12);
  
  // add(5,10);
  // add(5,10, 15);

  // try {
  //   var check = checkAge(11);
  //   print("worked");

  // } catch (errorMessage) {

  //   print(errorMessage);

  // } finally {
  //   print("run anyway");
  // }

  /*
  int x = 4;
  double y = 23.5;
  String a = "adada";
  bool complete = true;


  dynamic name = "osama";
  name = 25; // no error but dengrous to use

  var age = 15;
  // age = "data";    -> var locks on the data type

  const color = "white";
  // color = "black";  const can never change value

  final String naaame = "trosc";
  // naaame = "ahmed";    final can't change value after run


  if (x > 5) {
    print("bigger than 5");
  } else if (x == 5) {
    print("smaller than 5");
  }

  // x == 5 ? print("") : print("other");

  String grade = 'B';
  switch (grade) {
    case 'A':
      print("Success");
      break;
    case 'B':
      print("Perfect");
      // break;
    defualt:
      print("keep trying");
}

List<int> numbers = [1, 2, 3, 5 , 6, 7, 8, 9];

Map<dynamic, dynamic> ages = {};
Set<int> s = {1,2,2,2,2,3};


print(numbers);
// numbers.add(5);
// numbers.remove(1);
// print(numbers);
// print(numbers.indexOf(1));

ages.addAll({
  "Osama": 20,
  "Ahmed": 15,
  "Mohamed": 28,
});

// print(ages as Map<String, int>);

// numbers.removeRange(0, 3);


// for (int i = 0; i <= 3; i++) {
//   numbers.removeAt(i);
// }

print(numbers.where( (item) => item%2 == 0 ));


// Non Nullable
String? nickName = null;
nickName = "Osama";
// print(nickName.length);

print(nickName ?? "Not Available");

for (int i = 0; i < nickName.length; i++) {

}

for (int i in numbers) {
  print(i);
}

var fruits = ["apple", "banan", "orange"];
for (String example in fruits) {
  print(example);
}

int limit = 10;
int timer = 10;
while (timer < limit) {
  print(timer);
  timer = timer + 1;
}

do {
  print("running");
} while (timer < limit);



*/
}