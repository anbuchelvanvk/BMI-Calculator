# BMI Calculator App 🏋️‍♂️📱

A sleek and intuitive **BMI Calculator Application**, built using Flutter, that helps users determine their **Body Mass Index (BMI)** and assess their health category based on their age, weight and height.

## 📌 Features
- **User Inputs**: Gender, height, weight, age
- **BMI Calculation**: Based on the standard **BMI formula** - BMI = weight (kg) / height² (m²)
- **Health Categorization**:
  - **Underweight** - Below 18.5
  - **Normal** - 18.5 to 24.9
  - **Overweight** - 25.0 to 29.9
  - **Obese** - 30.0 to 35.9
  - **Extreme Obesity** - 35.9 or greater
    
- **Dynamic UI**: Displays an appropriate outline image based on BMI category
- **Clean Architecture**: Organized into four modular pages:
  - `main.dart` → Runnable entry file
  - `constant.dart` → Contains reusable values and constants
  - `home_screen.dart` → The main user interface
  - `second_screen.dart` → Displays the result phase

## 🛠 Installation & Setup
1. **Clone the repository**:
   ```sh
   git clone https://github.com/yourusername/bmi-calculator.git

2. **Navigate to the project directory**:
 ```sh
cd bmi-calculator
```

3. **Install dependencies**:
```sh
flutter pub get
```

4. Run the app:
```sh
flutter run
```

📷 **Screenshots**

1. **Interface of the application** :

![Screenshot 2025-06-13 071605](https://github.com/user-attachments/assets/03caadb7-6c9a-4692-ba89-92ad0a15818b)


2. **Select the gender** :

![Screenshot 2025-06-13 071619](https://github.com/user-attachments/assets/0ace991d-2583-4b5d-9c21-1a5e26ea3717)


3. **Use the slider to mark the height** :

![Screenshot 2025-06-13 071639](https://github.com/user-attachments/assets/2d79697e-07f0-426b-ac10-dac422c3e0d7)


4. **Update the age as well as the weight by using '+' and '-' icons** :

![Screenshot 2025-06-13 071704](https://github.com/user-attachments/assets/b44baaf1-bc59-419e-b36d-efaa053d4745)


5. **Get your BMI value along with the category and sample image** :

![Screenshot 2025-06-13 071718](https://github.com/user-attachments/assets/1c3123f7-ce4a-49ad-8bb2-d770ce196db6)



🎯 **How It Works?**
- Enter your Gender, Height, Weight, and Age.
- Click Calculate.
- The app processes your input using the BMI formula.
- Your BMI result appears on a new screen with a corresponding outline image indicating your category.
  
💡 **Future Enhancements**
- Add unit conversions (e.g., cm ↔ inches, kg ↔ pounds)
- Implement personalized health tips based on BMI category
- Introduce multi-language support
  
🖊 **Author**
Developed by Anbuchelvan VK
✨ Feel free to fork and contribute!
