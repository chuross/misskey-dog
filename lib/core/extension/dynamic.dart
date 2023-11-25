extension DynamicExt<I> on dynamic {
  T map<T>({required T Function(I) func}) {
    return func(this);
  }

  T mapOrElse<T>({required T Function(I) func, required T elseValue}) {
    return this != null ? func(this) : elseValue;
  }
}
