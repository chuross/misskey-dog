import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logger_provider.g.dart';

final logger = Logger(
  printer: PrettyPrinter(),
);

@riverpod
Logger log(LogRef ref) {
  return logger;
}
