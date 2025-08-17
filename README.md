# lazycoder

🚀 **lazycoder** is a Flutter project created with RealScript.

### For production

```
fvm flutter build appbundle --flavor prod -t lib/src/app_config/build/main_prod.dart

```

```
fvm flutter run --flavor prod -t lib/src/app_config/build/main_prod.dart

```

```
fvm flutter build apk --flavor prod -t lib/src/app_config/build/main_prod.dart

```

```
fvm flutter run -d chrome --dart-define=FLAVOR=prod -t lib/src/app_config/build/main_prod.dart

```

```
fvm flutter build web --release --dart-define=FLAVOR=prod -t lib/src/app_config/build/main_prod.dart

```

```
fvm flutter run -d linux --flavor prod -t lib/src/app_config/build/main_prod.dart

```

```
fvm flutter build linux --release -t lib/src/app_config/build/main_prod.dart --dart-define=FLAVOR=prod

```

```
fvm flutter run -d windows -t lib/src/app_config/build/main_prod.dart --dart-define=FLAVOR=prod

```

```
fvm flutter build windows --release -t lib/src/app_config/build/main_prod.dart --dart-define=FLAVOR=prod

```

### For development

```
fvm flutter build appbundle --flavor dev -t lib/src/app_config/build/main_dev.dart

```

```
fvm flutter run --flavor dev -t lib/src/app_config/build/main_dev.dart

```

```
fvm flutter build apk --flavor dev -t lib/src/app_config/build/main_dev.dart

```

```
fvm flutter run -d chrome --dart-define=FLAVOR=dev -t lib/src/app_config/build/main_dev.dart

```

```
fvm flutter build web --release --dart-define=FLAVOR=dev -t lib/src/app_config/build/main_dev.dart

```

```
fvm flutter run -d linux --flavor dev -t lib/src/app_config/build/main_dev.dart

```

```
fvm flutter build linux --release -t lib/src/app_config/build/main_dev.dart --dart-define=FLAVOR=dev

```

```
fvm flutter run -d windows -t lib/src/app_config/build/main_dev.dart --dart-define=FLAVOR=dev

```

```
fvm flutter build windows --release -t lib/src/app_config/build/main_dev.dart --dart-define=FLAVOR=dev

```

