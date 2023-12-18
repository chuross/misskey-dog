// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accountAuthorizationHash() =>
    r'f4ec371dd4bfa4b3bbcd80c5b2576d8f7eb97762';

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

/// See also [accountAuthorization].
@ProviderFor(accountAuthorization)
const accountAuthorizationProvider = AccountAuthorizationFamily();

/// See also [accountAuthorization].
class AccountAuthorizationFamily extends Family<AsyncValue<Account?>> {
  /// See also [accountAuthorization].
  const AccountAuthorizationFamily();

  /// See also [accountAuthorization].
  AccountAuthorizationProvider call({
    required String host,
    required String session,
  }) {
    return AccountAuthorizationProvider(
      host: host,
      session: session,
    );
  }

  @override
  AccountAuthorizationProvider getProviderOverride(
    covariant AccountAuthorizationProvider provider,
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
  String? get name => r'accountAuthorizationProvider';
}

/// See also [accountAuthorization].
class AccountAuthorizationProvider extends AutoDisposeFutureProvider<Account?> {
  /// See also [accountAuthorization].
  AccountAuthorizationProvider({
    required String host,
    required String session,
  }) : this._internal(
          (ref) => accountAuthorization(
            ref as AccountAuthorizationRef,
            host: host,
            session: session,
          ),
          from: accountAuthorizationProvider,
          name: r'accountAuthorizationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$accountAuthorizationHash,
          dependencies: AccountAuthorizationFamily._dependencies,
          allTransitiveDependencies:
              AccountAuthorizationFamily._allTransitiveDependencies,
          host: host,
          session: session,
        );

  AccountAuthorizationProvider._internal(
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
    FutureOr<Account?> Function(AccountAuthorizationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AccountAuthorizationProvider._internal(
        (ref) => create(ref as AccountAuthorizationRef),
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
  AutoDisposeFutureProviderElement<Account?> createElement() {
    return _AccountAuthorizationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AccountAuthorizationProvider &&
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

mixin AccountAuthorizationRef on AutoDisposeFutureProviderRef<Account?> {
  /// The parameter `host` of this provider.
  String get host;

  /// The parameter `session` of this provider.
  String get session;
}

class _AccountAuthorizationProviderElement
    extends AutoDisposeFutureProviderElement<Account?>
    with AccountAuthorizationRef {
  _AccountAuthorizationProviderElement(super.provider);

  @override
  String get host => (origin as AccountAuthorizationProvider).host;
  @override
  String get session => (origin as AccountAuthorizationProvider).session;
}

String _$accountStateHash() => r'72a8b68d7bb14d1f744762ac501a20a486d9a724';

/// See also [AccountState].
@ProviderFor(AccountState)
final accountStateProvider =
    AutoDisposeAsyncNotifierProvider<AccountState, Account?>.internal(
  AccountState.new,
  name: r'accountStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$accountStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AccountState = AutoDisposeAsyncNotifier<Account?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
