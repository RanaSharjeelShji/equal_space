# Equal Space
[![Learn More](https://github.com/RanaSharjeelShji/SharjeelAliRana/blob/main/Picsart_24-06-13_21-28-33-543.jpg?raw=true)](https://www.youtube.com/channel/UCnM_HfTRzP_XRdyYmfvTsGQ)
# About
Equal Space is a Flutter package that allows you stop using `SizedBox` for spacing between widgets. it simplifies the process of creating evenly spaced rows and columns in your Flutter applications. This package provides custom widgets, `SpacedRow` and `SpacedColumn`, which make it easy to manage spacing and alignment of child widgets.

## Features

- **Customizable Spacing**: Easily adjust the space between child widgets.
- **Flexible Alignment**: Support for main axis and cross axis alignment.
- **Simplified Code**: Reduces boilerplate code for spacing in rows and columns.

[![Learn More](https://github.com/RanaSharjeelShji/SharjeelAliRana/blob/main/Picsart_24-06-13_21-43-07-064.jpg?raw=true)](https://www.youtube.com/channel/UCnM_HfTRzP_XRdyYmfvTsGQ)
### SpacedColumn Example

```dart
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpacedColumn(
      space: 16.0,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.star, size: 50),
        Icon(Icons.star, size: 50),
        Icon(Icons.star, size: 50),
      ],
    );
  }
}
```
### SpacedRow Example

```dart
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpacedRow(
      space: 16.0,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.star, size: 50),
        Icon(Icons.star, size: 50),
        Icon(Icons.star, size: 50),
      ],
    );
  }
}
```
### Installation 
```
flutter pub add equal_space
import 'package:equal_space/equal_space.dart';
```

[![Learn More](https://github.com/RanaSharjeelShji/equal_space/blob/main/example/asset/banner.jpg?raw=true)](https://www.youtube.com/channel/UCnM_HfTRzP_XRdyYmfvTsGQ)
### Explanation

- **Overview**: Stop using SizedBox for adding up space in your widgets.
- **Features**: You can user mainAxis * crossAxisAligments with one more propery `space`.
- **Benigit**: Examples  `SpacedRow` and `SpacedColumn` widgets shows how effective this package is.
- **Example**: Instructions to run the example app.
- **Contributions**: Feel free to fork the repo.
- **License**: MIT License.
- **Connect with Us**:  Click below to visit my YouTube channel & Github.


[![Learn More](https://yt3.googleusercontent.com/9A0wEzTcikgC4mV4t0wfGrEQUWuKqcPI_thgqBGkRlDpRSbMHwAnKoAl0HmEoVoikNs7CgCGpg=s176-c-k-c0x00ffffff-no-rj)](https://www.youtube.com/channel/UCnM_HfTRzP_XRdyYmfvTsGQ)
[![Learn More](https://github.com/RanaSharjeelShji/equal_space/blob/main/example/asset/image%20(4).png?raw=true)](https://github.com/RanaSharjeelShji)