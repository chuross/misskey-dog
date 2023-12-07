// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'2245328aeb2d3b193a5835e405e5e71d9b28373c';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeFutureProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DioRef = AutoDisposeFutureProviderRef<Dio>;
String _$misskeyClientHash() => r'839c7d3866437a1c20d9605d8ee44bafcb2e4755';

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

/// See also [misskeyClient].
@ProviderFor(misskeyClient)
const misskeyClientProvider = MisskeyClientFamily();

/// See also [misskeyClient].
class MisskeyClientFamily extends Family<AsyncValue<MisskeyClient>> {
  /// See also [misskeyClient].
  const MisskeyClientFamily();

  /// See also [misskeyClient].
  MisskeyClientProvider call({
    String? baseUrl,
  }) {
    return MisskeyClientProvider(
      baseUrl: baseUrl,
    );
  }

  @override
  MisskeyClientProvider getProviderOverride(
    covariant MisskeyClientProvider provider,
  ) {
    return call(
      baseUrl: provider.baseUrl,
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
  String? get name => r'misskeyClientProvider';
}

/// See also [misskeyClient].
class MisskeyClientProvider extends AutoDisposeFutureProvider<MisskeyClient> {
  /// See also [misskeyClient].
  MisskeyClientProvider({
    String? baseUrl,
  }) : this._internal(
          (ref) => misskeyClient(
            ref as MisskeyClientRef,
            baseUrl: baseUrl,
          ),
          from: misskeyClientProvider,
          name: r'misskeyClientProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$misskeyClientHash,
          dependencies: MisskeyClientFamily._dependencies,
          allTransitiveDependencies:
              MisskeyClientFamily._allTransitiveDependencies,
          baseUrl: baseUrl,
        );

  MisskeyClientProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.baseUrl,
  }) : super.internal();

  final String? baseUrl;

  @override
  Override overrideWith(
    FutureOr<MisskeyClient> Function(MisskeyClientRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MisskeyClientProvider._internal(
        (ref) => create(ref as MisskeyClientRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        baseUrl: baseUrl,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<MisskeyClient> createElement() {
    return _MisskeyClientProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MisskeyClientProvider && other.baseUrl == baseUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, baseUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MisskeyClientRef on AutoDisposeFutureProviderRef<MisskeyClient> {
  /// The parameter `baseUrl` of this provider.
  String? get baseUrl;
}

class _MisskeyClientProviderElement
    extends AutoDisposeFutureProviderElement<MisskeyClient>
    with MisskeyClientRef {
  _MisskeyClientProviderElement(super.provider);

  @override
  String? get baseUrl => (origin as MisskeyClientProvider).baseUrl;
}

String _$misskeyStreamingHash() => r'09b99ec6133b9306d63aa14c86d27be945eaf8eb';

/// See also [_misskeyStreaming].
@ProviderFor(_misskeyStreaming)
final _misskeyStreamingProvider =
    AutoDisposeFutureProvider<WebSocketChannel>.internal(
  _misskeyStreaming,
  name: r'_misskeyStreamingProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$misskeyStreamingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _MisskeyStreamingRef = AutoDisposeFutureProviderRef<WebSocketChannel>;
String _$misskeyChannelStreamingHash() =>
    r'e214f4a9af9940134e4df4fe00f30a27270cd098';

/// See also [misskeyChannelStreaming].
@ProviderFor(misskeyChannelStreaming)
final misskeyChannelStreamingProvider =
    AutoDisposeProvider<Raw<Stream<dynamic>>>.internal(
  misskeyChannelStreaming,
  name: r'misskeyChannelStreamingProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$misskeyChannelStreamingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MisskeyChannelStreamingRef
    = AutoDisposeProviderRef<Raw<Stream<dynamic>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
