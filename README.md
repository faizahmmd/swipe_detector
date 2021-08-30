# swipe_detector

<p align="center">
  <strong>Swipe Detector</strong> is flutter package to detect swipe direction whether it downwards, upwards, lest or right.
</p>

# Table of contents
  * [Getting Started](#getting-started)
  * [Usage](#usage)
  * [Documentation](#documentation)
    * [SwipeDetector](#swipedetector)
  * [Author & Support](#author--support)


# Getting Started

* Add this to your pubspec.yaml
  ```
  dependencies:
  swipe_detector: ^0.0.1

  ```
* Get the package from Pub:

  ```
  flutter packages get
  ```
* Import it in your file

  ```
  import 'package:swipe_detector/swipe_detector.dart';
  ```

# Usage

 - *`SwipeDetector`* just requires a child widget..
 ```dart
                          SwipeDetector(
                                  onSwipeDown: (){
                                    print("you just swiped down.");
                                  },
                                  onSwipeUp: (){
                                    print("you just swiped up.");
                                  },
                                  onSwipeRight: (){
                                    print("you just swiped right.");
                                  },
                                  onSwipeLeft: (){
                                    print("you just swiped left.");
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    child: Center(
                                      child: Text(
                                        "Swipe to detect direction."
                                      ),
                                    ),
                                  ),
                                )
 ```

 * Check out the complete [Example](https://github.com/faizahmmd/swipe_detector/tree/main/example)

# Documentation

## SwipeDetector

Please Refer to [API documentation](https://pub.dev/documentation/swipe_detector/latest/index.html) for more details.

| Property | Type | Description | Default Value |
|-|:-:|-|:-:|
| onSwipeUp | `Function` | to do when swipe |  |
| onSwipeDown | `Function` | to do when swipe |  |
| onSwipeLeft | `Function` | to do when swipe |  |
| onSwipeRight | `Function` | to do when swipe |  |
| verticalMinDisplacement | `double` | min displacement in vertical direction to consider as swipe. | 100 |
| verticalMinVelocity | `double` | min velocity in vertical direction to consider as swipe. | 300 |
| horizontalMinDisplacement | `double` | min displacement in horizontal direction to consider as swipe. | 100 |
| horizontalMinVelocity | `double` | min velocity in horizontal direction to consider as swipe. | 300 |


# Author & support
This project is created by [Faiz Ahammed](https://github.com/faizahmmd) but with lots of support and help. See credits.
> If you appreciate my work, consider buying me a cup of :coffee: to keep me recharged :metal:
>  + [PayPal](https://www.paypal.me/faizahmmd)
>
> Or you can also connect/endorse me on [LinkedIn](https://www.linkedin.com/in/faiz-ahammed-82b013b7/) or [Instagram](https://www.instagram.com/faizahmmd/) to keep me motivated.


<img src="https://cdn-images-1.medium.com/max/1200/1*2yFbiGdcACiuLGo4dMKmJw.jpeg" width="90" height="35">
