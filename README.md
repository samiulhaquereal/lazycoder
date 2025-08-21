# lazycoder

🚀 **lazycoder** is a Flutter project created with RealScript.

I developed this project using a custom script that I created. As a result, there may be some unnecessary files and folders included. The project follows a feature-driven architecture to maintain clean and scalable code. For state management, I have used GetX. Additionally, I integrated my own package, RetCore, which I built to streamline small projects by avoiding repetitive code and ensuring efficiency across different projects.

Version Management: Applied FVM (Flutter Version Management) to maintain consistent Flutter versions across environments.
Environment Configuration: Implemented flavors to manage multiple stages, such as development and production.

### For production

```
fvm flutter build appbundle --flavor prod -t lib/main.dart --dart-define=ENV=PRODUCTION --dart-define-from-file=env/env.json

```

```
fvm flutter run --flavor prod -t lib/main.dart --dart-define=ENV=PRODUCTION --dart-define-from-file=env/env.json

```

```
fvm flutter build apk --flavor prod -t lib/main.dart --dart-define=ENV=PRODUCTION --dart-define-from-file=env/env.json

```

### For development

```
fvm flutter build appbundle --flavor dev -t lib/main.dart --dart-define=ENV=DEVELOPMENT --dart-define-from-file=env/env.json

```

```
fvm flutter run --flavor dev -t lib/main.dart --dart-define=ENV=DEVELOPMENT --dart-define-from-file=env/env.json

```

```
fvm flutter build apk --flavor dev -t lib/main.dart --dart-define=ENV=DEVELOPMENT --dart-define-from-file=env/env.json

```