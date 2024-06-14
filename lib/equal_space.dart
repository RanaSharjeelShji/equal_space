import 'package:flutter/material.dart';

/// Abstract base class for spaced widgets.
/// This class defines common properties and methods for its subclasses.
abstract class SpacedWidget extends StatelessWidget {
  final List<Widget> children; // List of child widgets
  final double space; // Space between each child
  final MainAxisAlignment? mainAxisAlignment; // Main axis alignment
  final MainAxisSize? mainAxisSize; // Main axis size
  final CrossAxisAlignment? crossAxisAlignment; // Cross axis alignment
  final TextDirection? textDirection; // Text direction
  final VerticalDirection? verticalDirection; // Vertical direction
  final TextBaseline? textBaseline; // Text baseline

  /// Constructor for the SpacedWidget.
  ///
  /// The [children] and [space] parameters are required.
  /// The [mainAxisAlignment], [mainAxisSize], [crossAxisAlignment], [textDirection],
  /// [verticalDirection], and [textBaseline] parameters control the alignment
  /// and layout of children.
  const SpacedWidget({
    required this.children,
    required this.space,
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.textBaseline,
    Key? key, // Added named 'key' parameter
  }) : super(key: key); // Used named 'key' parameter in super constructor

  /// Getter to determine the axis direction.
  /// This is overridden by subclasses to specify the direction (horizontal for row, vertical for column).
  @protected
  Axis get axis;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: axis,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      mainAxisSize: mainAxisSize ?? MainAxisSize.max,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      textDirection: textDirection,
      verticalDirection: verticalDirection ?? VerticalDirection.down,
      textBaseline: textBaseline,
      children: addSpacing(),
    );
  }

  /// Adds spacing between children.
  ///
  /// This method iterates over the children list and inserts SizedBox widgets for spacing.
  List<Widget> addSpacing() {
    if (children.isEmpty) return [];
    List<Widget> spacedChildren = [];
    for (int i = 0; i < children.length; i++) {
      spacedChildren.add(children[i]);
      if (i != children.length - 1) {
        spacedChildren.add(axis == Axis.horizontal
            ? SizedBox(width: space)
            : SizedBox(height: space));
      }
    }
    return spacedChildren;
  }
}

/// A widget that arranges its children in a horizontal row with equal spacing.
class SpacedRow extends SpacedWidget {
  /// Constructor for SpacedRow.
  ///
  /// Inherits properties from SpacedWidget and specifies the axis as horizontal.
  const SpacedRow({
    required List<Widget> children,
    required double space,
    MainAxisAlignment? mainAxisAlignment,
    MainAxisSize? mainAxisSize,
    CrossAxisAlignment? crossAxisAlignment,
    TextDirection? textDirection,
    VerticalDirection? verticalDirection,
    TextBaseline? textBaseline,
    Key? key, // Added named 'key' parameter
  }) : super(
          key: key,
          children: children,
          space: space,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
        );

  @override
  Axis get axis => Axis.horizontal;
}

/// A widget that arranges its children in a vertical column with equal spacing.
class SpacedColumn extends SpacedWidget {
  /// Constructor for SpacedColumn.
  ///
  /// Inherits properties from SpacedWidget and specifies the axis as vertical.
  const SpacedColumn({
    required List<Widget> children,
    required double space,
    MainAxisAlignment? mainAxisAlignment,
    MainAxisSize? mainAxisSize,
    CrossAxisAlignment? crossAxisAlignment,
    TextDirection? textDirection,
    VerticalDirection? verticalDirection,
    TextBaseline? textBaseline,
    Key? key, // Added named 'key' parameter
  }) : super(
          key: key,
          children: children,
          space: space,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
        );

  @override
  Axis get axis => Axis.vertical;
}
