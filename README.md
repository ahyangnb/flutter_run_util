# flutter_run_util
To prevent a Future call many times in same time.

```dart
RunUtil.run(() async {
  /// Doing time-consuming tasks
 });
```