// lib/spaced_widgets.dart

library equal_space;

import 'package:flutter/material.dart';

/// Abstract base class for spaced widgets.
/// This class defines common properties and methods for its subclasses.
abstract class SpacedWidget extends StatelessWidget {
  final List<Widget> children; // List of child widgets
  final double space; // Space between each child
  final MainAxisAlignment mainAxisAlignment; // Main axis alignment
  final CrossAxisAlignment crossAxisAlignment; // Cross axis alignment

  /// Constructor for the SpacedWidget.
  /// 
  /// The [children] parameter is required. 
  /// The [space] parameter specifies the space between each child widget.
  /// The [mainAxisAlignment] and [crossAxisAlignment] parameters control the alignment of children.
  const SpacedWidget({
    required this.children,
    this.space = 8.0,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  /// Getter to determine the axis direction.
  /// This is overridden by subclasses to specify the direction (horizontal for row, vertical for column).
  @protected
  Axis get axis;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: axis,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
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
    double space = 8.0,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) : super(
          children: children,
          space: space,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
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
    double space = 8.0,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) : super(
          children: children,
          space: space,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
        );

  @override
  Axis get axis => Axis.vertical;
}
