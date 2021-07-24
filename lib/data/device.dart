import 'package:synt/blocs/store_bloc/items/memory.dart';
import 'package:synt/blocs/store_bloc/items/ram.dart';

abstract class Device {
  static RAM ram = RAM(2, "hueta", 500);
  static Memory memory = Memory(64, "heuta", 500);
}
