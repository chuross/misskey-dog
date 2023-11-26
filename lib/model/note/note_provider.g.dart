// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$noteHash() => r'7db3528adfdcf775552d00c34599d71e036fac2c';

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

abstract class _$Note extends BuildlessAutoDisposeAsyncNotifier<model.Note?> {
  late final String? id;

  FutureOr<model.Note?> build({
    String? id,
  });
}

/// See also [Note].
@ProviderFor(Note)
const noteProvider = NoteFamily();

/// See also [Note].
class NoteFamily extends Family<AsyncValue<model.Note?>> {
  /// See also [Note].
  const NoteFamily();

  /// See also [Note].
  NoteProvider call({
    String? id,
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

/// See also [Note].
class NoteProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Note, model.Note?> {
  /// See also [Note].
  NoteProvider({
    String? id,
  }) : this._internal(
          () => Note()..id = id,
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

  final String? id;

  @override
  FutureOr<model.Note?> runNotifierBuild(
    covariant Note notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(Note Function() create) {
    return ProviderOverride(
      origin: this,
      override: NoteProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<Note, model.Note?> createElement() {
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

mixin NoteRef on AutoDisposeAsyncNotifierProviderRef<model.Note?> {
  /// The parameter `id` of this provider.
  String? get id;
}

class _NoteProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Note, model.Note?>
    with NoteRef {
  _NoteProviderElement(super.provider);

  @override
  String? get id => (origin as NoteProvider).id;
}

String _$notesHash() => r'f634d994a787890380dd4f55c1807bb2e09f1e18';

abstract class _$Notes
    extends BuildlessAutoDisposeAsyncNotifier<List<model.Note>> {
  late final bool isLocal;
  late final int limit;

  FutureOr<List<model.Note>> build({
    bool isLocal = false,
    int limit = 50,
  });
}

/// See also [Notes].
@ProviderFor(Notes)
const notesProvider = NotesFamily();

/// See also [Notes].
class NotesFamily extends Family<AsyncValue<List<model.Note>>> {
  /// See also [Notes].
  const NotesFamily();

  /// See also [Notes].
  NotesProvider call({
    bool isLocal = false,
    int limit = 50,
  }) {
    return NotesProvider(
      isLocal: isLocal,
      limit: limit,
    );
  }

  @override
  NotesProvider getProviderOverride(
    covariant NotesProvider provider,
  ) {
    return call(
      isLocal: provider.isLocal,
      limit: provider.limit,
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
  String? get name => r'notesProvider';
}

/// See also [Notes].
class NotesProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Notes, List<model.Note>> {
  /// See also [Notes].
  NotesProvider({
    bool isLocal = false,
    int limit = 50,
  }) : this._internal(
          () => Notes()
            ..isLocal = isLocal
            ..limit = limit,
          from: notesProvider,
          name: r'notesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notesHash,
          dependencies: NotesFamily._dependencies,
          allTransitiveDependencies: NotesFamily._allTransitiveDependencies,
          isLocal: isLocal,
          limit: limit,
        );

  NotesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.isLocal,
    required this.limit,
  }) : super.internal();

  final bool isLocal;
  final int limit;

  @override
  FutureOr<List<model.Note>> runNotifierBuild(
    covariant Notes notifier,
  ) {
    return notifier.build(
      isLocal: isLocal,
      limit: limit,
    );
  }

  @override
  Override overrideWith(Notes Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotesProvider._internal(
        () => create()
          ..isLocal = isLocal
          ..limit = limit,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        isLocal: isLocal,
        limit: limit,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Notes, List<model.Note>>
      createElement() {
    return _NotesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotesProvider &&
        other.isLocal == isLocal &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isLocal.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NotesRef on AutoDisposeAsyncNotifierProviderRef<List<model.Note>> {
  /// The parameter `isLocal` of this provider.
  bool get isLocal;

  /// The parameter `limit` of this provider.
  int get limit;
}

class _NotesProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Notes, List<model.Note>>
    with NotesRef {
  _NotesProviderElement(super.provider);

  @override
  bool get isLocal => (origin as NotesProvider).isLocal;
  @override
  int get limit => (origin as NotesProvider).limit;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
