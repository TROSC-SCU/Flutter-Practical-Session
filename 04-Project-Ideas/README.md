## 📚 Table of Contents
1. [Project Requirements](#-project-requirements)
2. [Project Ideas](#-project-ideas)
3. [Team Division](#-team-division)


## 🎯 Project Requirements
- State Management: **Provider only**
- Local Storage: **Hive only**
- CRUD Operations: **All 4 required**
- Screens: **2-3 minimum**

---

## 💡 Project Ideas

### 1. **📚 Student Management System**
- **Features**: Add/Edit/Delete students, Track grades, View student list
- **Screens**: Student List, Add/Edit Student, Student Details
- **Data**: Name, ID, Department, GPA, Phone

### 2. **👥 Employee Management**
- **Features**: Manage employees, Track attendance, Department assignment
- **Screens**: Employee List, Add/Edit Employee, Employee Profile
- **Data**: Name, ID, Position, Salary, Department, Join Date

### 3. **🛒 Product Inventory**
- **Features**: Add/Remove products, Update stock, Search products
- **Screens**: Product List, Add/Edit Product, Product Details
- **Data**: Name, Price, Quantity, Category, Barcode

### 4. **💰 Expense Tracker**
- **Features**: Record expenses, Categorize spending, View statistics
- **Screens**: Expense List, Add Expense, Category Summary
- **Data**: Amount, Category, Date, Description, Payment Method

### 5. **📖 Book Library**
- **Features**: Add books, Mark as read, Search & filter
- **Screens**: Book List, Add/Edit Book, Book Details
- **Data**: Title, Author, Genre, Pages, Read Status

### 6. **🎯 Habit Tracker**
- **Features**: Create habits, Daily check-ins, Progress tracking
- **Screens**: Habit List, Add Habit, Habit Details/Stats
- **Data**: Habit Name, Frequency, Streak, Last Completed

### 7. **🍽️ Recipe Manager**
- **Features**: Save recipes, Categorize, Mark favorites
- **Screens**: Recipe List, Add/Edit Recipe, Recipe Details
- **Data**: Name, Ingredients, Instructions, Category, Cook Time

### 8. **🎬 Movie Watchlist**
- **Features**: Add movies, Mark as watched, Rate movies
- **Screens**: Movie List, Add Movie, Movie Details
- **Data**: Title, Genre, Year, Rating, Watched Status

### 9. **📞 Contact Manager**
- **Features**: Save contacts, Search, Group contacts
- **Screens**: Contact List, Add/Edit Contact, Contact Details
- **Data**: Name, Phone, Email, Address, Group

### 10. **🎓 Course Scheduler**
- **Features**: Add courses, Track schedule, Mark attendance
- **Screens**: Course List, Add Course, Course Details
- **Data**: Course Name, Instructor, Days, Time, Room

---

## 🤝 Team Division
This project is designed for **6 students**.

### **Student 1: Project Setup & Model**
**Tasks:**
- Initialize Flutter project
- Add dependencies (Provider, Hive)
- Create data model class (Task/Product/Student/etc.)
- Create project folder structure

### **Student 2: Provider Setup**
**Tasks:**
- Create Provider class (ChangeNotifier)
- Implement state management logic
- Add methods: `addItem()`, `updateItem()`, `deleteItem()`, `loadItems()`
- Implement computed properties (count, filtered lists, etc.)
- Setup provider in main.dart


### **Student 3: Hive Integration**
**Tasks:**
- Initialize Hive in main.dart
- Create Hive box
- Implement CRUD operations with Hive:
  - Create: Save to Hive
  - Read: Load from Hive on app start
  - Update: Update Hive entries
  - Delete: Remove from Hive
- Handle data persistence logic


### **Student 4: Home Screen UI**
**Tasks:**
- Design and implement main screen layout
- Create AppBar with title and stats
- Implement ListView to display items
- Add FloatingActionButton for adding items
- Style the UI (colors, fonts, spacing)
- Connect UI with Provider (Consumer widgets)


### **Student 5: Add/Edit Screen**
**Tasks:**
- Create modal bottom sheet or new screen for adding items
- Implement input fields (TextFields)
- Add form validation
- Create "Add" button with functionality
- Implement edit functionality (reuse same screen/sheet)
- Handle keyboard interaction (padding for keyboard)


### **Student 6: Delete & Additional Features**
**Tasks:**
- Implement delete functionality with confirmation dialog
- Add checkbox/toggle for completion status
- Implement search/filter functionality (optional)
- Add empty state UI (when no items exist)
- Polish UI animations and transitions
- Final testing and bug fixes


