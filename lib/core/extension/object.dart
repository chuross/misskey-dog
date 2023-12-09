extension ObjectExt<T> on T {
  R map<R>(R Function(T) func) {
    return func(this);
  }

  T? takeIf(bool Function(T) predicate) {
    return predicate(this) ? this : null;
  }

  bool? takeIfTrue() {
    return this is bool && this as bool ? true : null;
  }

  R? safeCast<R>() {
    return (this is R) ? this as R : null;
  }
}

extension ObjectNullExt<T> on T? {
  R mapOrElse<R>(R Function(T) func, {required R elseValue}) {
    return this == null ? elseValue : func(this as T);
  }
}
