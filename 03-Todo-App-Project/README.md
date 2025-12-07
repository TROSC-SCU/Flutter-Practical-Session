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
