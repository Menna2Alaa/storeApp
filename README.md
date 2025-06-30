# Store App

A simple Flutter e-commerce application that demonstrates CRUD operations using the Fake Store API.
learned how to deal with get, post nd put APIs.

## Features

- **Browse Products**: View all available products in a grid layout
- **Product Details**: Each product displays title, price, image, and rating
- **Update Products**: Edit product information including title, description, price, and image
- **Responsive Design**: Clean and modern UI with custom widgets
- **API Integration**: Full REST API integration with proper error handling

## API Integration

The app integrates with the [Fake Store API](https://fakestoreapi.com/) to:
- Fetch all products
- Get products by category
- Add new products
- Update existing products
- Retrieve all available categories

## Architecture

- **Models**: Product and Rating data models with JSON serialization
- **Services**: Separate service classes for different API operations
- **Widgets**: Reusable custom widgets for UI components
- **Pages**: Home page for product browsing and update page for editing

## Dependencies

- `flutter/material.dart` - Material Design components
- `http` - HTTP client for API requests
- `font_awesome_flutter` - Icons
- `modal_progress_hud_nsn` - Loading indicators

## Getting Started

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Run `flutter run` to start the application

The app features a clean product grid layout with easy navigation to product editing functionality.
