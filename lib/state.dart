import 'package:demoapp/enums.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final flowControllerRef = Provider(
  (_) => FlowController<BodyContent>(BodyContent.dashboard),
);
