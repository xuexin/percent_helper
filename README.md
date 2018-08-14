# percent_helper

A helper of percent layout for Flutter.

## Getting Started
First, setSource at anywhere:
```dart
import 'package:percent_helper/percent_helper.dart' as percent;

void main() {
  // The design size you want
  // The map of safeArea is used with SafeArea Widget
  percent.setSource(1920, 1080, safeArea: {
      "left" : true,
      "right" : true,
      "top" : true,
      "bottom" : true,
    });    
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
