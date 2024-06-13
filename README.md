# Equal Space

Equal Space is a Flutter package that allows you stop using `SizedBox` for spacing between widgets. it simplifies the process of creating evenly spaced rows and columns in your Flutter applications. This package provides custom widgets, `SpacedRow` and `SpacedColumn`, which make it easy to manage spacing and alignment of child widgets.

## Features

- **Customizable Spacing**: Easily adjust the space between child widgets.
- **Flexible Alignment**: Support for main axis and cross axis alignment.
- **Simplified Code**: Reduces boilerplate code for spacing in rows and columns.

<a href="https://www.youtube.com/channel/UCnM_HfTRzP_XRdyYmfvTsGQ">
    <img src="https://github.com/RanaSharjeelShji/equal_space/blob/main/example/assets/Screenshot_2024-06-13-15-44-20-820_com.example.example.jpg?raw=true" alt="Learn More" width="400" height="300">
</a>

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
### Explanation

- **Overview**: Brief introduction to the package.
- **Features**: Highlights key features of the package.
- **Installation**: Instructions for adding the package to a Flutter project.
- **Usage**: Examples of how to use the `SpacedRow` and `SpacedColumn` widgets.
- **Example**: Instructions to run the example app.
- **Contributions**: Invitation for contributions and how to contribute.
- **License**: License information.
- **Connect with Us**:  Click below to visit my YouTube channel.


[![Learn More](https://yt3.googleusercontent.com/9A0wEzTcikgC4mV4t0wfGrEQUWuKqcPI_thgqBGkRlDpRSbMHwAnKoAl0HmEoVoikNs7CgCGpg=s176-c-k-c0x00ffffff-no-rj)](https://www.youtube.com/channel/UCnM_HfTRzP_XRdyYmfvTsGQ)
