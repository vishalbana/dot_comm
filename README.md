# DOT COMMERCE
#### Video Demo:  <URL https://youtu.be/eTa8wRsft_s>
#### Description:

# Dot Commerce

## Overview

Welcome to Dot Commerce, a Flutter-based application designed to showcase a simple yet functional e-commerce platform.

All the code for this app is written by me on my personal PC, with help from online sources. This is my second ever app developed using Flutter and Dart. I must also mention that although i have learnet a great deal from this project i must maintain that the architecture of the app is inspired from a flutter developer's tutorial and i have added more functionality and features on my own.

## Features

- **Product Listing**: Displays a list of products with images, descriptions, and prices.
- **Cart Management**: Users can add products to the cart.
- **Drawer Navigation**: Easy navigation with a left side panel containing buttons for the home page, cart, and exit.

## File Structure

### `lib` Folder

- **`my_button.dart`**: Contains the custom button widget used throughout the app.
- **`my_drawer.dart`**: Defines the drawer widget, which includes navigation buttons for the cart, exit, and home page.
- **`my_product_tile.dart`**: Responsible for displaying each product in a tile format. The tile shows the product image, description, price, and includes a button to add the product to the cart.

### `models` Folder

- **`shop.dart`**: Manages the product details including image, description, price, etc.

### `pages` Folder

- **`cart_page.dart`**: Defines the cart page where users can view products added to their cart.
- **`index_page.dart`**: Serves as the main entry point of the app, managing the initial navigation.
- **`shop_page.dart`**: Displays the list of products available for purchase.

### `themes` Folder

- **`theme.dart`**: Contains the theme data for the app, defining the overall look and feel.

## Detailed Components

### `my_button.dart`

This file contains the `MyButton` widget, a reusable button component used across various parts of the app. It simplifies the process of adding buttons with consistent styling and behavior.

### `my_drawer.dart`

The `MyDrawer` widget is a custom drawer that provides easy navigation within the app. It includes:
- **Cart Button**: Navigates to the cart page.
- **Exit Button**: Exits the app.
- **Home Button**: Returns to the home page.

### `my_product_tile.dart`

The `MyProductTile` widget is designed to display product information in a visually appealing format. Each tile includes:
- **Image**: A central image of the product.
- **Description**: A brief description of the product.
- **Price**: The price of the product.
- **Add to Cart Button**: A button to add the product to the cart.

### `models/shop.dart`

This file defines the product model, which includes:
- **Image**: URL or asset path of the product image.
- **Description**: Text description of the product.
- **Price**: Numeric value representing the product price.

### `pages/cart_page.dart`

The `CartPage` widget displays the items added to the cart. Users can review their selected products here.

### `pages/index_page.dart`

The `IndexPage` serves as the main entry point and initial page of the app. It sets up the primary navigation structure.

### `pages/shop_page.dart`

The `ShopPage` widget lists all available products using the `MyProductTile` widget for each product.

### `themes/theme.dart`

This file defines the overall theme of the app, including colors, fonts, and other styling properties. It ensures a consistent look and feel across all pages and components.

## Installation and Usage

To run this project, you need to have Flutter installed on your machine.

## Conclusion

This project represents a significant step in my development journey. Completing this app has allowed me to solidify my understanding of Flutter and Dart, and I am excited to continue building more complex applications in the future. Thank you for taking the time to explore Dot Commerce!
