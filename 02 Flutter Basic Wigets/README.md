# 📘 Flutter Basics – Essential Widgets

This section covers the **core Flutter widgets** needed to build simple mobile apps and implement CRUD operations using **Provider** and **Hive**.  

---

## 🏛 1. App Structure Widgets

### **MaterialApp**
- Root of every Flutter app  
- Handles:
  - Themes (colors, fonts)
  - Navigation (routes)
  - Debug banner control
  - Localization

### **Scaffold**
- Provides the main visual structure of a page:
  - `appBar`
  - `body`
  - `drawer`
  - `floatingActionButton`
  - `bottomNavigationBar`
  - `snackBars`

### **AppBar**
Important properties:
- `title`
- `leading`
- `actions`
- `backgroundColor`
- `centerTitle`

### **Navigation**
- `Navigator.push(context, ...)`
- `Navigator.pop(context)`
- Moving between screens  
- Used for "Add", "Edit", "Details" screens in CRUD apps

### **Drawer** (optional)
- Side menu for navigation  
- Useful but not required

---

## 🧱 2. Layout & Spacing Widgets

### **Container**
- Padding, margin, color, border, shadow, size  
- Used to wrap and style UI elements

### **Row**
- Horizontal layout  
- Often used with icons, buttons, small sections

### **Column**
- Vertical layout  
- Perfect for forms, lists, and page structure

### **Padding**
- Adds space around widgets

### **SizedBox**
- Fixed width or height  
- Used heavily for spacing

### **Expanded**
- Fills remaining space in Row/Column  
- Critical when combining ListView + Column

### **Center**
- Centers content on screen

### **Spacer**
- Flexible space between elements in a Row/Column

---

## 📜 3. List & Item Display Widgets

### **ListView**
- Scrollable list of widgets

### **ListView.builder**
- Recommended for dynamic lists (Hive + Provider)
- Used to show:
  - Users
  - Products
  - Tasks
  - Books
  - Any dynamic data

### **Card**
- Displays items with elevation and padding

### **ListTile**
- Extremely useful for CRUD lists  
- Built-in:
  - `title`
  - `subtitle`
  - `leading`
  - `trailing`
  - `onTap`

### **Divider**
- Thin line between list items

---

## 📝 4. Input & Form Widgets

### **TextField**
- Used to get user input for Add/Edit operations

### **TextFormField** (optional)
- With validation (useful but optional)

### **DropdownButton**
- Select category, department, status…

### **Checkbox / Switch**
- Mark as done, watched, read, active…

---

## 🎛 5. Buttons & User Actions

### **ElevatedButton**
- Primary action button  
- Submit form / save item

### **IconButton**
- Edit / delete actions inside ListTile trailing

### **FloatingActionButton (FAB)**
- “Add New Item” button in CRUD apps

---

## ✋ 6. Gesture Widgets

### **GestureDetector**
- Detect taps, double taps, long press  
- Used when wrapping custom containers/cards

### **InkWell**
- Like GestureDetector but with ripple effect  
- Best when tapping Cards or Rows

---

## 💬 7. Dialogs, Sheets & Feedback

### **AlertDialog**
- Used for:
  - Delete confirmation
  - Warnings
  - Simple popups

### **Modal Bottom Sheet**
- Great for:
  - Add item form  
  - Edit item form  
  - Quick input

### **SnackBar**
- Show success messages:
  - “Item added”
  - “Item updated”
  - “Item deleted”

`ScaffoldMessenger.of(context)` is required to show them.

---

## 🧩 8. Helpful UI Widgets

### **CircleAvatar**
- For icons, user photos, profile initials

### **ClipRRect**
- Rounded corners for images or containers
