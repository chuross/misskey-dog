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

String _$misskeyStreamingHash() => r'cdf72cb17b78e2121fb1fc7221af7c283f5aa549';

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
    r'ca76c73acc3e03513dc3378eaf78558e436cb9b8';

/// See also [_misskeyChannelStreaming].
@ProviderFor(_misskeyChannelStreaming)
const _misskeyChannelStreamingProvider = _MisskeyChannelStreamingFamily();

/// See also [_misskeyChannelStreaming].
class _MisskeyChannelStreamingFamily extends Family<Raw<Stream<dynamic>>> {
  /// See also [_misskeyChannelStreaming].
  const _MisskeyChannelStreamingFamily();

  /// See also [_misskeyChannelStreaming].
  _MisskeyChannelStreamingProvider call({
    required StreamingChannel channel,
  }) {
    return _MisskeyChannelStreamingProvider(
      channel: channel,
    );
  }

  @override
  _MisskeyChannelStreamingProvider getProviderOverride(
    covariant _MisskeyChannelStreamingProvider provider,
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
  String? get name => r'_misskeyChannelStreamingProvider';
}

/// See also [_misskeyChannelStreaming].
class _MisskeyChannelStreamingProvider
    extends AutoDisposeProvider<Raw<Stream<dynamic>>> {
  /// See also [_misskeyChannelStreaming].
  _MisskeyChannelStreamingProvider({
    required StreamingChannel channel,
  }) : this._internal(
          (ref) => _misskeyChannelStreaming(
            ref as _MisskeyChannelStreamingRef,
            channel: channel,
          ),
          from: _misskeyChannelStreamingProvider,
          name: r'_misskeyChannelStreamingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$misskeyChannelStreamingHash,
          dependencies: _MisskeyChannelStreamingFamily._dependencies,
          allTransitiveDependencies:
              _MisskeyChannelStreamingFamily._allTransitiveDependencies,
          channel: channel,
        );

  _MisskeyChannelStreamingProvider._internal(
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
    Raw<Stream<dynamic>> Function(_MisskeyChannelStreamingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _MisskeyChannelStreamingProvider._internal(
        (ref) => create(ref as _MisskeyChannelStreamingRef),
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
    return other is _MisskeyChannelStreamingProvider &&
        other.channel == channel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, channel.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin _MisskeyChannelStreamingRef
    on AutoDisposeProviderRef<Raw<Stream<dynamic>>> {
  /// The parameter `channel` of this provider.
  StreamingChannel get channel;
}

class _MisskeyChannelStreamingProviderElement
    extends AutoDisposeProviderElement<Raw<Stream<dynamic>>>
    with _MisskeyChannelStreamingRef {
  _MisskeyChannelStreamingProviderElement(super.provider);

  @override
  StreamingChannel get channel =>
      (origin as _MisskeyChannelStreamingProvider).channel;
}

String _$noteCreationStreamingHash() =>
    r'3c2ad7431b8bd0539096dc646e8d495bb4f5f852';

/// See also [noteCreationStreaming].
@ProviderFor(noteCreationStreaming)
const noteCreationStreamingProvider = NoteCreationStreamingFamily();

/// See also [noteCreationStreaming].
class NoteCreationStreamingFamily extends Family<AsyncValue<Note>> {
  /// See also [noteCreationStreaming].
  const NoteCreationStreamingFamily();

  /// See also [noteCreationStreaming].
  NoteCreationStreamingProvider call({
    required StreamingChannel channel,
  }) {
    return NoteCreationStreamingProvider(
      channel: channel,
    );
  }

  @override
  NoteCreationStreamingProvider getProviderOverride(
    covariant NoteCreationStreamingProvider provider,
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
  String? get name => r'noteCreationStreamingProvider';
}

/// See also [noteCreationStreaming].
class NoteCreationStreamingProvider extends AutoDisposeStreamProvider<Note> {
  /// See also [noteCreationStreaming].
  NoteCreationStreamingProvider({
    required StreamingChannel channel,
  }) : this._internal(
          (ref) => noteCreationStreaming(
            ref as NoteCreationStreamingRef,
            channel: channel,
          ),
          from: noteCreationStreamingProvider,
          name: r'noteCreationStreamingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$noteCreationStreamingHash,
          dependencies: NoteCreationStreamingFamily._dependencies,
          allTransitiveDependencies:
              NoteCreationStreamingFamily._allTransitiveDependencies,
          channel: channel,
        );

  NoteCreationStreamingProvider._internal(
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
    Stream<Note> Function(NoteCreationStreamingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NoteCreationStreamingProvider._internal(
        (ref) => create(ref as NoteCreationStreamingRef),
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
  AutoDisposeStreamProviderElement<Note> createElement() {
    return _NoteCreationStreamingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NoteCreationStreamingProvider && other.channel == channel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, channel.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NoteCreationStreamingRef on AutoDisposeStreamProviderRef<Note> {
  /// The parameter `channel` of this provider.
  StreamingChannel get channel;
}

class _NoteCreationStreamingProviderElement
    extends AutoDisposeStreamProviderElement<Note>
    with NoteCreationStreamingRef {
  _NoteCreationStreamingProviderElement(super.provider);

  @override
  StreamingChannel get channel =>
      (origin as NoteCreationStreamingProvider).channel;
}

String _$noteUpdateStreamingHash() =>
    r'93f33caed698389506192136bb1471e7fd215716';

/// See also [_noteUpdateStreaming].
@ProviderFor(_noteUpdateStreaming)
const _noteUpdateStreamingProvider = _NoteUpdateStreamingFamily();

/// See also [_noteUpdateStreaming].
class _NoteUpdateStreamingFamily extends Family<AsyncValue<dynamic>> {
  /// See also [_noteUpdateStreaming].
  const _NoteUpdateStreamingFamily();

  /// See also [_noteUpdateStreaming].
  _NoteUpdateStreamingProvider call({
    required String noteId,
  }) {
    return _NoteUpdateStreamingProvider(
      noteId: noteId,
    );
  }

  @override
  _NoteUpdateStreamingProvider getProviderOverride(
    covariant _NoteUpdateStreamingProvider provider,
  ) {
    return call(
      noteId: provider.noteId,
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
  String? get name => r'_noteUpdateStreamingProvider';
}

/// See also [_noteUpdateStreaming].
class _NoteUpdateStreamingProvider extends AutoDisposeStreamProvider<dynamic> {
  /// See also [_noteUpdateStreaming].
  _NoteUpdateStreamingProvider({
    required String noteId,
  }) : this._internal(
          (ref) => _noteUpdateStreaming(
            ref as _NoteUpdateStreamingRef,
            noteId: noteId,
          ),
          from: _noteUpdateStreamingProvider,
          name: r'_noteUpdateStreamingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$noteUpdateStreamingHash,
          dependencies: _NoteUpdateStreamingFamily._dependencies,
          allTransitiveDependencies:
              _NoteUpdateStreamingFamily._allTransitiveDependencies,
          noteId: noteId,
        );

  _NoteUpdateStreamingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.noteId,
  }) : super.internal();

  final String noteId;

  @override
  Override overrideWith(
    Stream<dynamic> Function(_NoteUpdateStreamingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _NoteUpdateStreamingProvider._internal(
        (ref) => create(ref as _NoteUpdateStreamingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        noteId: noteId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<dynamic> createElement() {
    return _NoteUpdateStreamingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _NoteUpdateStreamingProvider && other.noteId == noteId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, noteId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin _NoteUpdateStreamingRef on AutoDisposeStreamProviderRef<dynamic> {
  /// The parameter `noteId` of this provider.
  String get noteId;
}

class _NoteUpdateStreamingProviderElement
    extends AutoDisposeStreamProviderElement<dynamic>
    with _NoteUpdateStreamingRef {
  _NoteUpdateStreamingProviderElement(super.provider);

  @override
  String get noteId => (origin as _NoteUpdateStreamingProvider).noteId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
