extension ObjectExt<T> on T {
  R map<R>(R Function(T) func) {
    return func(this);
  }

  T? takeIf(bool Function(T) predicate) {
    return predicate(this) ? this : null;
  }

  R? safeCast<R>() {
    return (this is R) ? this as R : null;
  }
}
