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
│   │   ├── address_screen.dart
│   │   ├── cart_screen.dart
│   │   ├── home_screen.dart
│   │   ├── login_screen.dart
│   │   ├── payment_method_screen.dart
│   │   ├── profile_screen.dart
│   │   ├── recovery_screen.dart
│   │   ├── signup_screen.dart
│   │   └── splash_screen.dart
│   ├── widgets/
│   │   ├── container_button_modal.dart
│   │   ├── product_card.dart
│   │   ├── product_details_popup.dart
│   │   └── ...
│   ├── models/
│   │   ├── user.dart
│   │   ├── product.dart
│   │   └── ...
│   ├── constants.dart
│   ├── main.dart
│   └── ...
├── assets/
│   ├── images/
│   │   ├── amazon_pay.png
│   │   ├── visa.png
│   │   ├── master.png
│   │   ├── icon2.png
│   │   ├── paypal.png
│   │   └── freed.png
├── test/
│   └── ...
├── pubspec.yaml
└── README.md

## Screens

### lib/screens/

- `address_screen.dart`: Screen for managing user addresses.
- `cart_screen.dart`: Screen displaying the shopping cart contents.
- `home_screen.dart`: Main screen showing product categories and featured items.
- `login_screen.dart`: Screen for user authentication and login.
- `payment_method_screen.dart`: Screen for selecting and managing payment methods.
- `profile_screen.dart`: Screen for managing user profiles and order history.
- `recovery_screen.dart`: Screen for password recovery and resetting.
- `signup_screen.dart`: Screen for new user registration and account creation.
- `splash_screen.dart`: Splash screen displayed when the app is launched.

