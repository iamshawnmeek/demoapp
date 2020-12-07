import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/all.dart';

final activeRouteNameRef = ChangeNotifierProvider<ValueNotifier<String>>(
  (ref) => ValueNotifier<String>('dashboard'),
);
