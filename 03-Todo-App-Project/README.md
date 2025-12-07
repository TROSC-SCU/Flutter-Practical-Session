## 📚 Table of Contents
- [Hive - Simple Guide](#-hive--custom-models-guide)
- [Provider - State Management Guide](#-provider--state-management-guide)

# 🐝 Hive – Custom Models Guide

## 🟨 1. Add Dependencies

Add these to your `pubspec.yaml`:

```yaml
dependencies:
  hive: ^2.0.0
  hive_flutter: ^1.1.0

dev_dependencies:
  hive_generator: ^2.0.0
  build_runner: ^2.4.0
```

Then run:

```bash
flutter pub get
```

---

## 🟦 2. Create a Hive Model Class

To store custom objects, annotate your class with:
- `@HiveType`
- `@HiveField`

### Example: Student model

```dart
import 'package:hive/hive.dart';

part 'student.g.dart';

@HiveType(typeId: 0)
class Student {
  @HiveField(0)
  String name;

  @HiveField(1)
  int age;

  Student(this.name, this.age);
}
```

### Important Rules
- Each model must have a unique `typeId`.
- Each field must have a unique index starting from `0`.
- Include the `part 'modelname.g.dart';` line at the top.

---

## 🟧 3. Generate the Hive Adapter

Run:

```bash
flutter pub run build_runner build
```

This will generate:

```
student.g.dart
```

It contains the `StudentAdapter`, which Hive uses internally.

---

## 🟥 4. Register the Adapter

Register the adapter before opening the box, usually in `main.dart`.

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  
  Hive.registerAdapter(StudentAdapter());
  
  await Hive.openBox<Student>('students');
  
  runApp(MyApp());
}
```

---

## 🟩 5. Open a Typed Box

```dart
final studentBox = Hive.box<Student>('students');
```

---

## 🟪 6. Create (Add) Custom Objects

```dart
studentBox.add(Student("Ahmed", 21));
```

---

## 🟫 7. Update Custom Objects

```dart
studentBox.putAt(0, Student("Ahmed", 22));
```

---

## 🟦 8. Read Custom Objects

```dart
Student s = studentBox.getAt(0)!;
print(s.name); // Ahmed
print(s.age);  // 22
```

---

## 🟥 9. Delete Custom Objects

```dart
studentBox.deleteAt(0);
```

---

# 🌿 Provider – State Management Guide

## 📌 What We Need From Provider

Your app must:
- Hold data in memory using Provider (state)
- Sync changes with Hive (local database)
- Automatically update UI when data changes

So we only need:

1. **ChangeNotifier**
2. **ChangeNotifierProvider**
3. **Provider.of / context.watch / context.read**
4. **notifyListeners()**

That's it — no need for advanced architecture.

---

## 🟩 1. Create a Provider Class

Your provider will:
- Hold the list of items
- Add, delete, update items
- Fetch initial data from Hive
- Notify widgets to rebuild

### Example: `StudentProvider`

```dart
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../models/student.dart';

class StudentProvider extends ChangeNotifier {
  List<Student> students = [];

  final Box<Student> studentBox = Hive.box<Student>('students');

  StudentProvider() {
    loadStudents();
  }

  void loadStudents() {
    students = studentBox.values.toList();
    notifyListeners();
  }

  void addStudent(Student s) {
    studentBox.add(s);
    students = studentBox.values.toList();
    notifyListeners();
  }

  void updateStudent(int index, Student updated) {
    studentBox.putAt(index, updated);
    students = studentBox.values.toList();
    notifyListeners();
  }

  void deleteStudent(int index) {
    studentBox.deleteAt(index);
    students = studentBox.values.toList();
    notifyListeners();
  }
}
```

---

## 🟦 2. Register the Provider in main.dart

Wrap your app with `ChangeNotifierProvider`.

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(StudentAdapter());
  await Hive.openBox<Student>('students');

  runApp(
    ChangeNotifierProvider(
      create: (_) => StudentProvider(),
      child: MyApp(),
    ),
  );
}
```

---

## 🟨 3. Use Provider in Your Widgets

There are 3 essential ways to use Provider.

### ✔ A) Listen for updates (auto rebuild)

Use `context.watch` when the widget must rebuild automatically.

```dart
final students = context.watch<StudentProvider>().students;
```

### ✔ B) Read without rebuild

Use `context.read` when performing an action.

```dart
context.read<StudentProvider>().addStudent(Student("Sara", 20));
```

### ✔ C) Provider.of

Same as watch/read, but longer. Avoid it in new code.

---

## 🟪 4. Example: Student List Screen

```dart
class StudentListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<StudentProvider>();

    return Scaffold(
      appBar: AppBar(title: Text("Students")),
      body: ListView.builder(
        itemCount: provider.students.length,
        itemBuilder: (context, index) {
          final s = provider.students[index];

          return ListTile(
            title: Text(s.name),
            subtitle: Text("Age: ${s.age}"),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                context.read<StudentProvider>().deleteStudent(index);
              },
            ),
          );
        },
      ),
    );
  }
}
```

---

## 🟥 5. Example: Add Student Screen

```dart
class AddStudentScreen extends StatelessWidget {
  final nameCtrl = TextEditingController();
  final ageCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Student")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameCtrl,
              decoration: InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: ageCtrl,
              decoration: InputDecoration(labelText: "Age"),
              keyboardType: TextInputType.number,
            ),

            SizedBox(height: 20),

            ElevatedButton(
              child: Text("Add"),
              onPressed: () {
                final student = Student(
                  nameCtrl.text,
                  int.parse(ageCtrl.text),
                );

                context.read<StudentProvider>().addStudent(student);

                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
```

---

## 🧩 Summary Table

| Feature | Why We Use It |
|---------|---------------|
| `ChangeNotifier` | Allows class to notify UI of changes |
| `ChangeNotifierProvider` | Makes provider accessible in the widget tree |
| `notifyListeners()` | Rebuilds listening widgets |
| `context.watch` | Reads data & rebuilds UI on change |
| `context.read` | Executes actions without rebuild |

