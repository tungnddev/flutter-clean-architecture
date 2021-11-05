Flutter App With Clean Architecture
## Feature
* `Some features` - Some features.
## Project structure
(`/lib` folder)
* `/app` - main application
* `/data` - get data from remote (API) or local (database / local storage) and send to UI layer
    * `/local` - service get data from local storage (Hive)
    * `/models` - models with JsonSerializable, using for remote response
    * `/remote` - all logic for remote, include service ger response from API and map into a model app
    * `/repositories` - each repository for each module, and output to presenter layer
* `/domain` - all POJO class, include models app, core of repository
* `/presenter` - code all screens using BLoC state management
* `/env` - config environment
* `/route` - handle all navigator, using route
* `/I10n` - config language in app
* `/utils` - utilities for app
    * `define` - Define some const resource, include images, colors,...
    * `extension` - extension for app
    * `widgets` - common widgets
## Components:
* [BLoC](https://pub.dev/packages/bloc)
* [FlutterFire](https://firebase.flutter.dev/)
* Clean Architecture
## Usage
* Install Flutter
* Clone project
* Run `flutter pub get` to get and sync all library
* Run `flutter pub global run intl_utils:generate` to generate files language
    * (If get some error about cache `intl_utils`, `dart pub add intl_utils` and then reactive `flutter run pub global activate intl_utils` )
* Run `flutter pub run build_runner build --delete-conflicting-outputs` to generate all models flow json
* Run follow target `flutter run -t [target]`
    * `[target]` is `lib/env/main_debug.dart` or `lib/env/main_release.dart` (some constants change is file `lib/env/environment`)
* Run with profile mode follow target `flutter run --profile -t [target]`
* Build apk follow target `flutter build apk -t [target]`
* Build ios follow target `flutter build ios -t [target]`
## Flow in app


## License
[MIT](https://choosealicense.com/licenses/mit/)