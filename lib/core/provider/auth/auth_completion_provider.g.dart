// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_completion_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authCompletionHash() => r'9b0170770dc8fb5ea70d087bed7f97bbec666383';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [authCompletion].
@ProviderFor(authCompletion)
const authCompletionProvider = AuthCompletionFamily();

/// See also [authCompletion].
class AuthCompletionFamily extends Family<AsyncValue<bool>> {
  /// See also [authCompletion].
  const AuthCompletionFamily();

  /// See also [authCompletion].
  AuthCompletionProvider call({
    required String session,
  }) {
    return AuthCompletionProvider(
      session: session,
    );
  }

  @override
  AuthCompletionProvider getProviderOverride(
    covariant AuthCompletionProvider provider,
  ) {
    return call(
      session: provider.session,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'authCompletionProvider';
}

/// See also [authCompletion].
class AuthCompletionProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [authCompletion].
  AuthCompletionProvider({
    required String session,
  }) : this._internal(
          (ref) => authCompletion(
            ref as AuthCompletionRef,
            session: session,
          ),
          from: authCompletionProvider,
          name: r'authCompletionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$authCompletionHash,
          dependencies: AuthCompletionFamily._dependencies,
          allTransitiveDependencies:
              AuthCompletionFamily._allTransitiveDependencies,
          session: session,
        );

  AuthCompletionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.session,
  }) : super.internal();

  final String session;

  @override
  Override overrideWith(
    FutureOr<bool> Function(AuthCompletionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AuthCompletionProvider._internal(
        (ref) => create(ref as AuthCompletionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        session: session,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _AuthCompletionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AuthCompletionProvider && other.session == session;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, session.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AuthCompletionRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `session` of this provider.
  String get session;
}

class _AuthCompletionProviderElement
    extends AutoDisposeFutureProviderElement<bool> with AuthCompletionRef {
  _AuthCompletionProviderElement(super.provider);

  @override
  String get session => (origin as AuthCompletionProvider).session;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
