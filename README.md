# Architecture for beginners

A sample for beginners to get out of their architecture black box paradigm

### Steps that I performed in the [video](https://www.youtube.com/watch?v=PTyU24e0PNk)

- Extracted `MyHomePage` class from `main.dart` to a separate class named `users_list_page.dart`
- Extracted out the http call from `UsersListProvider` to a separate repository class (`UsersRepository`)
- Extracted out widgets from `UsersListPage` to a `widgets` folder so that the page file becomes a table of contents for the UI components
- Injected `UsersRepository` as a dependency. Made `UsersRepository` as a required parameter for `UsersListProvider`'s constructor.
- Added `getIt` to register the `UsersRepository` class

### Critical steps

- Created three separate folders named as `ui`, `data` and `domain`
- Moved the provider file, ui file, and `widgets` folder to the `ui` folder
- Created an abstract class for `UsersRepository` with once function `getUser()`
- Renamed the previous `UsersRepository` class to `RestApiUsersRepository` and made it implement the abstract class we just created
- Moved `UsersRepository` abstract class to `domain/repositories` folder
- Moved `RestApiUsersRepository` class to `data` folder
- Refactored the `getIt` registration to use the abstraction we just created
- Created a new `MockUsersRepository` class to show how we can point our whole app from one database to another in a blink of an eye
