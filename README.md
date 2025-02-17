
# Flutter-Folder-And-File-Structure

This Flutter project demonstrates a well-organized folder and file structure that follows best practices for scalable and maintainable app development. It provides a clear separation of concerns and is structured to support clean architecture principles.

## Project Structure

```plaintext
Flutter-Folder-And-File-Structure
├── assets
│   ├── data
│   │   └── sample.json
│   └── image
│       ├── common
│       └── sample_screen
├── lib
│   ├── data
│   │   ├── models
│   │   │   └── sample_model.dart
│   │   ├── providers
│   │   ├── repository
│   │   │   └── sample_data.dart
│   │   └── services
│   ├── domain
│   │   └── use_cases
│   │       └── sample_uc.dart
│   ├── landing_page.dart
│   ├── main.dart
│   ├── presentation
│   │   ├── bloc
│   │   │   └── plan
│   │   │       ├── sample_bloc.dart
│   │   │       ├── sample_event.dart
│   │   │       └── sample_state.dart
│   │   ├── screens
│   │   │   └── home
│   │   │       └── home_page.dart
│   │   └── widgets
│   │       ├── common
│   │       │   ├── hr.dart
│   │       │   └── img.dart
│   │       └── home
│   └── utils
│       ├── colors.dart
│       ├── route.dart
│       └── styles.dart
├── pubspec.lock
└── pubspec.yaml
```

### Folders Overview:
- **assets**: Contains static assets like images and data files (e.g., JSON).
- **lib/data**: Stores models, data providers, services, and repositories.
- **lib/domain**: Includes business logic and use cases.
- **lib/presentation**: Contains UI-related code, such as BLoC logic, screens, and widgets.
- **lib/utils**: Contains utility classes like theme, styles, and route management.

- **.github/workflows/main.yml**: This GitHub Action runs automatically when a PR is created for the main branch. It validates the code against the rules defined in **analysis_options.yaml**, eliminating the need for manual error checking.
- 
## Use the File

- Click the Code button → Download ZIP.
- Extract the downloaded ZIP file.


## Usage

You can use this files as a template for your project.

## Dependencies

- `flutter_bloc`: For state management using BLoC pattern.
- `responsive_sizer`: For auto-sizing text widgets.

## Contributing

Feel free to fork this repository, make improvements, and submit pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
