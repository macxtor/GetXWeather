# getx_weather

Flutter weather app with real-time data using GetX state management, and clean architecture principles.

## Table of Contents

- [Project Structure](#project-structure)
- [State Management](#state-management)
- [Unit Testing](#unit-testing)
- [Clean Architecture](#clean-architecture)
- [Getting Started](#getting-started)
- [Contributing](#contributing)
- [License](#license)

## Project Structure

Explain the structure of your project. Mention key directories, their purposes, and how the code is organized. For example:

```plaintext
/project_root
|-- lib
|   |-- data
|   |   |-- models             # Data models
|   |   |-- repository         # Data repository classes
|   |   |-- remote             # Remote data sources (API clients)
|   |   |-- local              # Local data sources (database, shared preferences)
|
|   |-- domain
|   |   |-- entities           # Domain entities
|   |   |-- repositories       # Abstract repositories interfaces
|   |   |-- usecases           # Business logic (use cases)
|
|   |-- presentation
|       |-- widgets            # Reusable UI components
|       |-- screens            # App screens
|       |-- blocs              # BLoC state management
|
|-- test                        # Unit tests
|-- android                     # Android-specific configuration
|-- ios                         # iOS-specific configuration
|-- ...

```
## State Management

The project utilizes the GetX library for efficient and reactive state management. GetX is a lightweight and powerful state management solution for Flutter applications, providing a simple and expressive API.

### Key Points:

- **GetX Library:** The project leverages the GetX library to handle state management. GetX allows for a reactive approach to updates, minimizing boilerplate code.

- **Observables:** State variables are declared as observables using GetX's `Rx` classes, such as `Rx<Weather?>` for nullable Weather data, `RxBool` for boolean states, and `RxString` for string states.

- **Reactive UI Updates:** GetX facilitates reactive UI updates by automatically rebuilding widgets when observables change. This eliminates the need for explicit callbacks or stream subscriptions.

- **Dependency Injection:** GetX provides a built-in dependency injection system, simplifying the management of dependencies in the application.

This approach with GetX ensures a clean and concise way of managing and reacting to state changes within the application, contributing to a more maintainable and streamlined codebase.

## Unit Testing

This project places a strong emphasis on unit testing to ensure code reliability and maintainability. Unit tests are implemented using the `test` package, and mocking libraries like `mocktail` are employed for creating mocks in tests.

### Key Points:

- **Test Organization:** Unit tests are organized in the `test` directory, following a structure that mirrors the project's source code. Each module or feature typically has its corresponding test file.

- **Mocking Libraries:** Mocking libraries, such as `mocktail`, are utilized to create mocks for external dependencies, facilitating isolated unit testing without making actual network or database calls.

- **Running Tests:** To run unit tests, use the `flutter test` command in the terminal. Continuous integration can also be set up to run tests automatically on code changes.

- **Test Coverage:** Aim for comprehensive test coverage to catch potential issues early and ensure that changes to the codebase do not introduce regressions.

The unit testing strategy contributes to a robust and stable codebase, making it easier to introduce changes, refactor code, and maintain the overall health of the project.

## Clean Architecture

This project adheres to the principles of Clean Architecture, promoting a modular and scalable structure that separates concerns and dependencies. Clean Architecture divides the codebase into layers, each with a distinct responsibility.

### Key Points:

- **Data Layer:** The `data` layer contains data models, repositories (implementations of data access interfaces), and remote and local data sources.

- **Domain Layer:** The `domain` layer comprises entities, use cases (business logic), and abstract repository interfaces. This layer contains the core application logic independent of external frameworks.

- **Presentation Layer:** The `presentation` layer includes UI components (widgets), screens, and state management. State management is achieved using the GetX library, promoting reactivity and simplicity.

- **Dependency Injection:** Clean Architecture emphasizes dependency inversion. Dependency injection is used to provide dependencies from outer layers to inner layers. This promotes testability and modularity.

- **Testability:** Clean Architecture facilitates unit testing by isolating business logic from external dependencies. Mocking is used in tests to ensure that the behavior of individual components is thoroughly tested.

The adoption of Clean Architecture principles contributes to maintainability, scalability, and testability, allowing for easier adaptation to changing requirements and ensuring a robust foundation for the application.
