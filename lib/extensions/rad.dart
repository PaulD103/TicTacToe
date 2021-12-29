import 'dart:math';

/// Convert a given [number] from degree to radian.
extension ToRadian on num {
  double toRad() {
    return this * (pi / 180);
  }
}
