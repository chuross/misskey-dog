// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$noteHash() => r'3e0e2ed57bc9822ba9e2dd6912ca211dddc41393';

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

/// See also [note].
@ProviderFor(note)
const noteProvider = NoteFamily();

/// See also [note].
class NoteFamily extends Family<AsyncValue<Note>> {
  /// See also [note].
  const NoteFamily();

  /// See also [note].
  NoteProvider call({
    required String id,
  }) {
    return NoteProvider(
      id: id,
    );
  }

  @override
  NoteProvider getProviderOverride(
    covariant NoteProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'noteProvider';
}

/// See also [note].
class NoteProvider extends AutoDisposeFutureProvider<Note> {
  /// See also [note].
  NoteProvider({
    required String id,
  }) : this._internal(
          (ref) => note(
            ref as NoteRef,
            id: id,
          ),
          from: noteProvider,
          name: r'noteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$noteHash,
          dependencies: NoteFamily._dependencies,
          allTransitiveDependencies: NoteFamily._allTransitiveDependencies,
          id: id,
        );

  NoteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<Note> Function(NoteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NoteProvider._internal(
        (ref) => create(ref as NoteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Note> createElement() {
    return _NoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NoteProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NoteRef on AutoDisposeFutureProviderRef<Note> {
  /// The parameter `id` of this provider.
  String get id;
}

class _NoteProviderElement extends AutoDisposeFutureProviderElement<Note>
    with NoteRef {
  _NoteProviderElement(super.provider);

  @override
  String get id => (origin as NoteProvider).id;
}

String _$noteCreationStreamingHash() =>
    r'5a789a5c6ffff7c117f19ecc6799ae796b253ab2';

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
    r'd370cfdd01a26ab0caa1986871084712f782e568';

/// See also [noteUpdateStreaming].
@ProviderFor(noteUpdateStreaming)
const noteUpdateStreamingProvider = NoteUpdateStreamingFamily();

/// See also [noteUpdateStreaming].
class NoteUpdateStreamingFamily extends Family<AsyncValue<dynamic>> {
  /// See also [noteUpdateStreaming].
  const NoteUpdateStreamingFamily();

  /// See also [noteUpdateStreaming].
  NoteUpdateStreamingProvider call({
    required String noteId,
  }) {
    return NoteUpdateStreamingProvider(
      noteId: noteId,
    );
  }

  @override
  NoteUpdateStreamingProvider getProviderOverride(
    covariant NoteUpdateStreamingProvider provider,
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
  String? get name => r'noteUpdateStreamingProvider';
}

/// See also [noteUpdateStreaming].
class NoteUpdateStreamingProvider extends AutoDisposeStreamProvider<dynamic> {
  /// See also [noteUpdateStreaming].
  NoteUpdateStreamingProvider({
    required String noteId,
  }) : this._internal(
          (ref) => noteUpdateStreaming(
            ref as NoteUpdateStreamingRef,
            noteId: noteId,
          ),
          from: noteUpdateStreamingProvider,
          name: r'noteUpdateStreamingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$noteUpdateStreamingHash,
          dependencies: NoteUpdateStreamingFamily._dependencies,
          allTransitiveDependencies:
              NoteUpdateStreamingFamily._allTransitiveDependencies,
          noteId: noteId,
        );

  NoteUpdateStreamingProvider._internal(
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
    Stream<dynamic> Function(NoteUpdateStreamingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NoteUpdateStreamingProvider._internal(
        (ref) => create(ref as NoteUpdateStreamingRef),
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
    return other is NoteUpdateStreamingProvider && other.noteId == noteId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, noteId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NoteUpdateStreamingRef on AutoDisposeStreamProviderRef<dynamic> {
  /// The parameter `noteId` of this provider.
  String get noteId;
}

class _NoteUpdateStreamingProviderElement
    extends AutoDisposeStreamProviderElement<dynamic>
    with NoteUpdateStreamingRef {
  _NoteUpdateStreamingProviderElement(super.provider);

  @override
  String get noteId => (origin as NoteUpdateStreamingProvider).noteId;
}

String _$cachedNoteHash() => r'210cc3323beecdd792b722b7a41a6932706c1e73';

abstract class _$CachedNote extends BuildlessAutoDisposeNotifier<Note?> {
  late final String id;

  Note? build({
    required String id,
  });
}

/// See also [CachedNote].
@ProviderFor(CachedNote)
const cachedNoteProvider = CachedNoteFamily();

/// See also [CachedNote].
class CachedNoteFamily extends Family<Note?> {
  /// See also [CachedNote].
  const CachedNoteFamily();

  /// See also [CachedNote].
  CachedNoteProvider call({
    required String id,
  }) {
    return CachedNoteProvider(
      id: id,
    );
  }

  @override
  CachedNoteProvider getProviderOverride(
    covariant CachedNoteProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'cachedNoteProvider';
}

/// See also [CachedNote].
class CachedNoteProvider
    extends AutoDisposeNotifierProviderImpl<CachedNote, Note?> {
  /// See also [CachedNote].
  CachedNoteProvider({
    required String id,
  }) : this._internal(
          () => CachedNote()..id = id,
          from: cachedNoteProvider,
          name: r'cachedNoteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$cachedNoteHash,
          dependencies: CachedNoteFamily._dependencies,
          allTransitiveDependencies:
              CachedNoteFamily._allTransitiveDependencies,
          id: id,
        );

  CachedNoteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Note? runNotifierBuild(
    covariant CachedNote notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(CachedNote Function() create) {
    return ProviderOverride(
      origin: this,
      override: CachedNoteProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CachedNote, Note?> createElement() {
    return _CachedNoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CachedNoteProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CachedNoteRef on AutoDisposeNotifierProviderRef<Note?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _CachedNoteProviderElement
    extends AutoDisposeNotifierProviderElement<CachedNote, Note?>
    with CachedNoteRef {
  _CachedNoteProviderElement(super.provider);

  @override
  String get id => (origin as CachedNoteProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
