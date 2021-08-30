library swipe_detector;
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class SwipeDetector extends StatelessWidget {
  final Widget child;

  final Function()? onSwipeUp;

  final Function()? onSwipeDown;

  final Function()? onSwipeLeft;

  final Function()? onSwipeRight;

  final double verticalMaxWidthThreshold;

  final double verticalMinDisplacement;

  final double verticalMinVelocity;

  final double horizontalMaxHeightThreshold;

  final double horizontalMinDisplacement;

  final double horizontalMinVelocity;

  SwipeDetector({
    required this.child,
    this.onSwipeUp,
    this.onSwipeDown,
    this.onSwipeLeft,
    this.onSwipeRight,
    this.verticalMaxWidthThreshold = 50,
    this.verticalMinDisplacement = 100,
    this.verticalMinVelocity = 300,
    this.horizontalMaxHeightThreshold = 50,
    this.horizontalMinDisplacement = 100,
    this.horizontalMinVelocity = 300,
  });

  @override
  Widget build(BuildContext context) {
    DragStartDetails? startVerticalDragDetails;
    DragUpdateDetails? updateVerticalDragDetails;

    DragStartDetails? startHorizontalDragDetails;
    DragUpdateDetails? updateHorizontalDragDetails;

    return GestureDetector(
      child: child,
      onVerticalDragStart: (dragDetails) {
        startVerticalDragDetails = dragDetails;
      },
      onVerticalDragUpdate: (dragDetails) {
        updateVerticalDragDetails = dragDetails;
      },
      onVerticalDragEnd: (endDetails) {
        if (startVerticalDragDetails != null &&
            updateVerticalDragDetails != null) {
          double dx = (updateVerticalDragDetails!.globalPosition.dx -
              startVerticalDragDetails!.globalPosition.dx)
              .abs();
          double dy = (updateVerticalDragDetails!.globalPosition.dy -
              startVerticalDragDetails!.globalPosition.dy)
              .abs();
          double velocity = endDetails.primaryVelocity ?? 0.0;

          if (dx > verticalMaxWidthThreshold) return;
          if (dy < verticalMinDisplacement) return;
          if (velocity.abs() < verticalMinVelocity) return;

          if (velocity < 0) {
            //Swipe Up
            onSwipeUp?.call();
          }

          if (velocity > 0) {
            //Swipe Down
            onSwipeDown?.call();
          }
        }
      },
      onHorizontalDragStart: (dragDetails) {
        startHorizontalDragDetails = dragDetails;
      },
      onHorizontalDragUpdate: (dragDetails) {
        updateHorizontalDragDetails = dragDetails;
      },
      onHorizontalDragEnd: (endDetails) {
        if (startHorizontalDragDetails != null &&
            updateHorizontalDragDetails != null) {
          double dx = (updateHorizontalDragDetails!.globalPosition.dx -
              startHorizontalDragDetails!.globalPosition.dx)
              .abs();
          double dy = (updateHorizontalDragDetails!.globalPosition.dy -
              startHorizontalDragDetails!.globalPosition.dy)
              .abs();
          double velocity = endDetails.primaryVelocity ?? 0.0;

          if (dy > horizontalMaxHeightThreshold) return;
          if (dx < horizontalMinDisplacement) return;
          if (velocity.abs() < horizontalMinVelocity) return;

          if (velocity < 0) {
            //Swipe Left
            onSwipeLeft?.call();
          }

          if (velocity > 0) {
            //Swipe Right
            onSwipeRight?.call();
          }
        }
      },
    );
  }
}