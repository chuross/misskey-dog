extension BoolExt on bool {
  bool? takeIfTrue() {
    return this ? true : null;
  }
}
