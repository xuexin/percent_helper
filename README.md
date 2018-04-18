# percent_helper

A helper of percent layout for Flutter.

## Getting Started
First, setSource at anywhere:
```dart
import 'package:percent_helper/percent_helper.dart' as percent;

void main() {
  percent.setSource(1920, 1080);    // The design size you want
  runApp(new MyApp());
}
```
Then, use it:
```dart
import 'package:percent_helper/percent_helper.dart';
// Full screen
new SizedBox(
            height: height(1920),
            width: width(1080),
```
