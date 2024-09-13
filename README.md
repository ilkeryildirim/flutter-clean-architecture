# Flutter - Clean Architecture Flutter Project (WIP)

This Flutter project structured with **Clean Architecture** principles, following **SOLID** design patterns to ensure maintainability, scalability, and testability. The project is modularized by features and incorporates best practices for handling state management, error handling, and localization.

## Table of Contents
- [Architecture Overview](#architecture-overview)
- [Features](#features)
- [Project Structure](#project-structure)
- [BaseScreen](#basescreen)
- [State Management](#state-management)
- [Error Handling](#error-handling)
- [Dependency Injection](#dependency-injection)
- [Localization](#localization)
- [How to Run](#how-to-run)

## Architecture Overview

This project is based on **Clean Architecture**, which divides the application into distinct layers with clear separation of concerns. Each feature contains its own `data`, `domain`, and `presentation` layers, making the project modular and scalable.

The layers are as follows:

1. **Data Layer**: Handles data sources (remote/local), repositories, and models.
2. **Domain Layer**: Contains business logic and interacts with the data layer through abstract repositories.
3. **Presentation Layer**: Contains the UI components and Bloc state management, communicating with the domain layer.

## Features

- **Modularized by Feature**: Each feature is isolated in its own folder with its own data, domain, and presentation logic.
- **Clean Architecture**: Follows Clean Architecture principles for clear separation of concerns and better testability.
- **SOLID Principles**: Applied to ensure that the system is scalable and maintainable.
- **Bloc State Management**: Manages application state using `flutter_bloc` package, ensuring efficient state handling.
- **Error Handling**: Centralized error handling through custom error classes and a helper function to reduce repeated error management code.
- **Localization**: Multi-language support using the `EasyLocalization` package.

## Project Structure

```bash
lib/
├── core/                   # Core functionalities and utilities
│   ├── entities/           # Base entities like Resource and ApiErrorEntity
│   ├── error/              # Error management (AppError, AppLocalizedError)
│   ├── helpers/            # Helper functions (e.g., API request handler)
│   ├── injector/           # Dependency injection for the core modules
├── features/               # Features are organized by modules (e.g., Exercise)
│   ├── exercisea/
│   │   ├── data/           # Data layer for Exercise feature (data sources, repositories, models)
│   │   ├── domain/         # Domain layer (repositories, business logic)
│   │   ├── presentation/   # Presentation layer (Bloc, UI widgets)
│   │   └── injector/       # Dependency injection for Exercise feature
├── shared/                 # Shared constants, widgets, and utility classes
│   ├── constants/          # Global constants like AppTexts for localization
│   └── widgets/            # Reusable widgets
└── main.dart               # Main entry point of the application