<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
class DemoTextFieldPackage extends StatelessWidget {
  const DemoTextFieldPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleTf(
      controller: TextEditingController(),
      suffixIcon: const Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(Icons.visibility),
      ),
      placeHolderText: 'Password',
      lines: 1,
      action: TextInputAction.done,
      inputType: TextInputType.visiblePassword,
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Wrong password. Try again or reset it.';
        } else {
          return null;
        }
      },
    );
  }
}

```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
