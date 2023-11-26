extension DynamicExt<I> on dynamic {
  T map<T>({required T Function(I) func}) {
    return func(this);
  }

  T mapOrElse<T>({required T Function(I) func, required T elseValue}) {
    return (this is! bool && this != null) || (this is bool && this) ? func(this as I) : elseValue;
  }
}
