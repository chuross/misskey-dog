// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'99e649291df11cb5dd07818a5b9d68c052e2debb';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DioRef = AutoDisposeProviderRef<Dio>;
String _$misskeyClientHash() => r'ce5d57107d59344f86c7e3b7d873b5d2a2437b4d';

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

String _$misskeyStreamingHash() => r'b8859f0297b69e433271551e06a6aae5c3063b6c';

/// See also [misskeyStreaming].
@ProviderFor(misskeyStreaming)
final misskeyStreamingProvider =
    AutoDisposeFutureProvider<(WebSocketChannel, Stream<dynamic>)>.internal(
  misskeyStreaming,
  name: r'misskeyStreamingProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$misskeyStreamingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MisskeyStreamingRef
    = AutoDisposeFutureProviderRef<(WebSocketChannel, Stream<dynamic>)>;
String _$misskeyChannelStreamingHash() =>
    r'2d43959f7d214c02ffacb9b575a09253fd720cbb';

/// See also [misskeyChannelStreaming].
@ProviderFor(misskeyChannelStreaming)
const misskeyChannelStreamingProvider = MisskeyChannelStreamingFamily();

/// See also [misskeyChannelStreaming].
class MisskeyChannelStreamingFamily extends Family<Raw<Stream<dynamic>>> {
  /// See also [misskeyChannelStreaming].
  const MisskeyChannelStreamingFamily();

  /// See also [misskeyChannelStreaming].
  MisskeyChannelStreamingProvider call({
    required StreamingChannel channel,
  }) {
    return MisskeyChannelStreamingProvider(
      channel: channel,
    );
  }

  @override
  MisskeyChannelStreamingProvider getProviderOverride(
    covariant MisskeyChannelStreamingProvider provider,
  ) {
    return call(
      channel: provider.channel,
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
  String? get name => r'misskeyChannelStreamingProvider';
}

/// See also [misskeyChannelStreaming].
class MisskeyChannelStreamingProvider
    extends AutoDisposeProvider<Raw<Stream<dynamic>>> {
  /// See also [misskeyChannelStreaming].
  MisskeyChannelStreamingProvider({
    required StreamingChannel channel,
  }) : this._internal(
          (ref) => misskeyChannelStreaming(
            ref as MisskeyChannelStreamingRef,
            channel: channel,
          ),
          from: misskeyChannelStreamingProvider,
          name: r'misskeyChannelStreamingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$misskeyChannelStreamingHash,
          dependencies: MisskeyChannelStreamingFamily._dependencies,
          allTransitiveDependencies:
              MisskeyChannelStreamingFamily._allTransitiveDependencies,
          channel: channel,
        );

  MisskeyChannelStreamingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.channel,
  }) : super.internal();

  final StreamingChannel channel;

  @override
  Override overrideWith(
    Raw<Stream<dynamic>> Function(MisskeyChannelStreamingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MisskeyChannelStreamingProvider._internal(
        (ref) => create(ref as MisskeyChannelStreamingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        channel: channel,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Raw<Stream<dynamic>>> createElement() {
    return _MisskeyChannelStreamingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MisskeyChannelStreamingProvider && other.channel == channel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, channel.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MisskeyChannelStreamingRef
    on AutoDisposeProviderRef<Raw<Stream<dynamic>>> {
  /// The parameter `channel` of this provider.
  StreamingChannel get channel;
}

class _MisskeyChannelStreamingProviderElement
    extends AutoDisposeProviderElement<Raw<Stream<dynamic>>>
    with MisskeyChannelStreamingRef {
  _MisskeyChannelStreamingProviderElement(super.provider);

  @override
  StreamingChannel get channel =>
      (origin as MisskeyChannelStreamingProvider).channel;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
