// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authorizationHash() => r'59cf0d02323ff55a0d79bdf7f7aaaa902e486e71';

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

/// See also [authorization].
@ProviderFor(authorization)
const authorizationProvider = AuthorizationFamily();

/// See also [authorization].
class AuthorizationFamily extends Family<AsyncValue<bool>> {
  /// See also [authorization].
  const AuthorizationFamily();

  /// See also [authorization].
  AuthorizationProvider call({
    required String host,
    required String session,
  }) {
    return AuthorizationProvider(
      host: host,
      session: session,
    );
  }

  @override
  AuthorizationProvider getProviderOverride(
    covariant AuthorizationProvider provider,
  ) {
    return call(
      host: provider.host,
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
  String? get name => r'authorizationProvider';
}

/// See also [authorization].
class AuthorizationProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [authorization].
  AuthorizationProvider({
    required String host,
    required String session,
  }) : this._internal(
          (ref) => authorization(
            ref as AuthorizationRef,
            host: host,
            session: session,
          ),
          from: authorizationProvider,
          name: r'authorizationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$authorizationHash,
          dependencies: AuthorizationFamily._dependencies,
          allTransitiveDependencies:
              AuthorizationFamily._allTransitiveDependencies,
          host: host,
          session: session,
        );

  AuthorizationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.host,
    required this.session,
  }) : super.internal();

  final String host;
  final String session;

  @override
  Override overrideWith(
    FutureOr<bool> Function(AuthorizationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AuthorizationProvider._internal(
        (ref) => create(ref as AuthorizationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        host: host,
        session: session,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _AuthorizationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AuthorizationProvider &&
        other.host == host &&
        other.session == session;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, host.hashCode);
    hash = _SystemHash.combine(hash, session.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AuthorizationRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `host` of this provider.
  String get host;

  /// The parameter `session` of this provider.
  String get session;
}

class _AuthorizationProviderElement
    extends AutoDisposeFutureProviderElement<bool> with AuthorizationRef {
  _AuthorizationProviderElement(super.provider);

  @override
  String get host => (origin as AuthorizationProvider).host;
  @override
  String get session => (origin as AuthorizationProvider).session;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
