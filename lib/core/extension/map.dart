extension MapExt<K, V> on Map<K, V> {
  Map<K, V> removeAllNullValueKeys() {
    return this..removeWhere((key, value) => value == null);
  }
}
