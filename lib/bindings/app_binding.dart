import 'package:get/get.dart';

import 'data_binding.dart';
import 'domain_binding.dart';
import 'presentation_binding.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    DataBinding().dependencies();
    DomainBinding().dependencies();
    PresentationBinding().dependencies();
  }
}
