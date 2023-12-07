extension StreamInStreamExt<T> on Stream<Stream<T>> {
  Stream<T> flatten() async* {
    await for (final stream in this) {
      yield* stream;
    }
  }
}
