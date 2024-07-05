# 🚢 ShipShop

ShipShop is a versatile Flutter-based e-commerce application designed to provide a seamless shopping experience. Whether you're a buyer or a seller, ShipShop offers intuitive features to browse products, manage orders, and facilitate secure payments.

## 🚀 Features

- **Product Catalog**: Browse through a wide range of products conveniently categorized for easy navigation.
- **User Authentication**: Secure login and registration processes to manage user accounts and preferences.
- **Shopping Cart**: Add and manage products in your cart with ease before checkout.
- **Payment Integration**: Secure payment gateways like Amazon Pay, Credit Card, Google Pay, and PayPal for smooth transactions.
- **Order Tracking**: Track your orders in real-time with status updates from processing to delivery.
- **Profile Management**: Update personal information and view order history effortlessly.
- **Responsive Design**: Optimized for various screen sizes to ensure a consistent user experience across devices.

## 📸 Screenshots

<p align="center">
  <img src="assets/screenshots/home_screen.png" width="30%" alt="Home Screen">
  <img src="assets/screenshots/product_details_screen.png" width="30%" alt="Product Details Screen">
  <img src="assets/screenshots/cart_screen.png" width="30%" alt="Cart Screen">
</p>
<p align="center">
  <img src="assets/screenshots/payment_screen.png" width="30%" alt="Payment Screen">
  <img src="assets/screenshots/profile_screen.png" width="30%" alt="Profile Screen">
  <img src="assets/screenshots/settings_screen.png" width="30%" alt="Settings Screen">
</p>

## 🛠 Installation

To run this project on your local machine, follow these steps:

1. **Clone the repository:**

    ```sh
    git clone https://github.com/yourusername/shipshop.git
    cd shipshop
    ```

2. **Install Flutter and Dart:**

    Follow the official [Flutter installation guide](https://flutter.dev/docs/get-started/install) to set up Flutter on your machine.

3. **Install dependencies:**

    ```sh
    flutter pub get
    ```

4. **Run the app:**

    ```sh
    flutter run
    ```

## 📂 Project Structure

```plaintext
shipshop/
├── lib/
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── product_details_screen.dart
│   │   ├── cart_screen.dart
│   │   ├── payment_screen.dart
│   │   ├── profile_screen.dart
│   │   └── ...
│   ├── widgets/
│   │   ├── product_card.dart
│   │   ├── cart_item.dart
│   │   ├── payment_option.dart
│   │   └── ...
│   ├── models/
│   │   ├── product.dart
│   │   ├── user.dart
│   │   └── ...
│   ├── main.dart
│   └── constants.dart
├── assets/
│   ├── images/
│   │   └── screenshots/
│   │       ├── home_screen.png
│   │       ├── product_details_screen.png
│   │       ├── cart_screen.png
│   │       ├── payment_screen.png
│   │       ├── profile_screen.png
│   │       └── settings_screen.png
├── test/
│   └── ...
├── pubspec.yaml
└── README.md
