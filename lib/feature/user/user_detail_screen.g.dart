// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_screen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userDetailHash() => r'2e79a6b4221560826fd68dd58ab29e1e164d6be1';

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

/// See also [_userDetail].
@ProviderFor(_userDetail)
const _userDetailProvider = _UserDetailFamily();

/// See also [_userDetail].
class _UserDetailFamily extends Family<AsyncValue<User>> {
  /// See also [_userDetail].
  const _UserDetailFamily();

  /// See also [_userDetail].
  _UserDetailProvider call({
    required String userId,
  }) {
    return _UserDetailProvider(
      userId: userId,
    );
  }

  @override
  _UserDetailProvider getProviderOverride(
    covariant _UserDetailProvider provider,
  ) {
    return call(
      userId: provider.userId,
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
  String? get name => r'_userDetailProvider';
}

/// See also [_userDetail].
class _UserDetailProvider extends AutoDisposeFutureProvider<User> {
  /// See also [_userDetail].
  _UserDetailProvider({
    required String userId,
  }) : this._internal(
          (ref) => _userDetail(
            ref as _UserDetailRef,
            userId: userId,
          ),
          from: _userDetailProvider,
          name: r'_userDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userDetailHash,
          dependencies: _UserDetailFamily._dependencies,
          allTransitiveDependencies:
              _UserDetailFamily._allTransitiveDependencies,
          userId: userId,
        );

  _UserDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(
    FutureOr<User> Function(_UserDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _UserDetailProvider._internal(
        (ref) => create(ref as _UserDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<User> createElement() {
    return _UserDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _UserDetailProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin _UserDetailRef on AutoDisposeFutureProviderRef<User> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserDetailProviderElement extends AutoDisposeFutureProviderElement<User>
    with _UserDetailRef {
  _UserDetailProviderElement(super.provider);

  @override
  String get userId => (origin as _UserDetailProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
