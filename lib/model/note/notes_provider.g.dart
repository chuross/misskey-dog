// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localNoteIdsWithCacheHash() =>
    r'd8bb1d62efdb13cadd300fcd7308d835c5dc9912';

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

abstract class _$LocalNoteIdsWithCache
    extends BuildlessAutoDisposeAsyncNotifier<List<String>> {
  late final bool? hasFiles;

  FutureOr<List<String>> build({
    bool? hasFiles,
  });
}

/// See also [LocalNoteIdsWithCache].
@ProviderFor(LocalNoteIdsWithCache)
const localNoteIdsWithCacheProvider = LocalNoteIdsWithCacheFamily();

/// See also [LocalNoteIdsWithCache].
class LocalNoteIdsWithCacheFamily extends Family<AsyncValue<List<String>>> {
  /// See also [LocalNoteIdsWithCache].
  const LocalNoteIdsWithCacheFamily();

  /// See also [LocalNoteIdsWithCache].
  LocalNoteIdsWithCacheProvider call({
    bool? hasFiles,
  }) {
    return LocalNoteIdsWithCacheProvider(
      hasFiles: hasFiles,
    );
  }

  @override
  LocalNoteIdsWithCacheProvider getProviderOverride(
    covariant LocalNoteIdsWithCacheProvider provider,
  ) {
    return call(
      hasFiles: provider.hasFiles,
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
  String? get name => r'localNoteIdsWithCacheProvider';
}

/// See also [LocalNoteIdsWithCache].
class LocalNoteIdsWithCacheProvider
    extends AutoDisposeAsyncNotifierProviderImpl<LocalNoteIdsWithCache,
        List<String>> {
  /// See also [LocalNoteIdsWithCache].
  LocalNoteIdsWithCacheProvider({
    bool? hasFiles,
  }) : this._internal(
          () => LocalNoteIdsWithCache()..hasFiles = hasFiles,
          from: localNoteIdsWithCacheProvider,
          name: r'localNoteIdsWithCacheProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$localNoteIdsWithCacheHash,
          dependencies: LocalNoteIdsWithCacheFamily._dependencies,
          allTransitiveDependencies:
              LocalNoteIdsWithCacheFamily._allTransitiveDependencies,
          hasFiles: hasFiles,
        );

  LocalNoteIdsWithCacheProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.hasFiles,
  }) : super.internal();

  final bool? hasFiles;

  @override
  FutureOr<List<String>> runNotifierBuild(
    covariant LocalNoteIdsWithCache notifier,
  ) {
    return notifier.build(
      hasFiles: hasFiles,
    );
  }

  @override
  Override overrideWith(LocalNoteIdsWithCache Function() create) {
    return ProviderOverride(
      origin: this,
      override: LocalNoteIdsWithCacheProvider._internal(
        () => create()..hasFiles = hasFiles,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        hasFiles: hasFiles,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<LocalNoteIdsWithCache, List<String>>
      createElement() {
    return _LocalNoteIdsWithCacheProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocalNoteIdsWithCacheProvider && other.hasFiles == hasFiles;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, hasFiles.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LocalNoteIdsWithCacheRef
    on AutoDisposeAsyncNotifierProviderRef<List<String>> {
  /// The parameter `hasFiles` of this provider.
  bool? get hasFiles;
}

class _LocalNoteIdsWithCacheProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<LocalNoteIdsWithCache,
        List<String>> with LocalNoteIdsWithCacheRef {
  _LocalNoteIdsWithCacheProviderElement(super.provider);

  @override
  bool? get hasFiles => (origin as LocalNoteIdsWithCacheProvider).hasFiles;
}

String _$globalNoteIdsWithCacheHash() =>
    r'dbac20846d77653db74409969ca4365c5f271d0d';

abstract class _$GlobalNoteIdsWithCache
    extends BuildlessAutoDisposeAsyncNotifier<List<String>> {
  late final bool? hasFiles;

  FutureOr<List<String>> build({
    bool? hasFiles,
  });
}

/// See also [GlobalNoteIdsWithCache].
@ProviderFor(GlobalNoteIdsWithCache)
const globalNoteIdsWithCacheProvider = GlobalNoteIdsWithCacheFamily();

/// See also [GlobalNoteIdsWithCache].
class GlobalNoteIdsWithCacheFamily extends Family<AsyncValue<List<String>>> {
  /// See also [GlobalNoteIdsWithCache].
  const GlobalNoteIdsWithCacheFamily();

  /// See also [GlobalNoteIdsWithCache].
  GlobalNoteIdsWithCacheProvider call({
    bool? hasFiles,
  }) {
    return GlobalNoteIdsWithCacheProvider(
      hasFiles: hasFiles,
    );
  }

  @override
  GlobalNoteIdsWithCacheProvider getProviderOverride(
    covariant GlobalNoteIdsWithCacheProvider provider,
  ) {
    return call(
      hasFiles: provider.hasFiles,
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
  String? get name => r'globalNoteIdsWithCacheProvider';
}

/// See also [GlobalNoteIdsWithCache].
class GlobalNoteIdsWithCacheProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GlobalNoteIdsWithCache,
        List<String>> {
  /// See also [GlobalNoteIdsWithCache].
  GlobalNoteIdsWithCacheProvider({
    bool? hasFiles,
  }) : this._internal(
          () => GlobalNoteIdsWithCache()..hasFiles = hasFiles,
          from: globalNoteIdsWithCacheProvider,
          name: r'globalNoteIdsWithCacheProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$globalNoteIdsWithCacheHash,
          dependencies: GlobalNoteIdsWithCacheFamily._dependencies,
          allTransitiveDependencies:
              GlobalNoteIdsWithCacheFamily._allTransitiveDependencies,
          hasFiles: hasFiles,
        );

  GlobalNoteIdsWithCacheProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.hasFiles,
  }) : super.internal();

  final bool? hasFiles;

  @override
  FutureOr<List<String>> runNotifierBuild(
    covariant GlobalNoteIdsWithCache notifier,
  ) {
    return notifier.build(
      hasFiles: hasFiles,
    );
  }

  @override
  Override overrideWith(GlobalNoteIdsWithCache Function() create) {
    return ProviderOverride(
      origin: this,
      override: GlobalNoteIdsWithCacheProvider._internal(
        () => create()..hasFiles = hasFiles,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        hasFiles: hasFiles,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GlobalNoteIdsWithCache, List<String>>
      createElement() {
    return _GlobalNoteIdsWithCacheProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GlobalNoteIdsWithCacheProvider &&
        other.hasFiles == hasFiles;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, hasFiles.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GlobalNoteIdsWithCacheRef
    on AutoDisposeAsyncNotifierProviderRef<List<String>> {
  /// The parameter `hasFiles` of this provider.
  bool? get hasFiles;
}

class _GlobalNoteIdsWithCacheProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GlobalNoteIdsWithCache,
        List<String>> with GlobalNoteIdsWithCacheRef {
  _GlobalNoteIdsWithCacheProviderElement(super.provider);

  @override
  bool? get hasFiles => (origin as GlobalNoteIdsWithCacheProvider).hasFiles;
}

String _$searchNotesIdsWithCacheHash() =>
    r'b9a9efa121f30290bccf14ffb9da742d6f11b308';

abstract class _$SearchNotesIdsWithCache
    extends BuildlessAutoDisposeAsyncNotifier<List<String>> {
  late final String keyword;
  late final bool? hasFiles;

  FutureOr<List<String>> build({
    required String keyword,
    bool? hasFiles,
  });
}

/// See also [SearchNotesIdsWithCache].
@ProviderFor(SearchNotesIdsWithCache)
const searchNotesIdsWithCacheProvider = SearchNotesIdsWithCacheFamily();

/// See also [SearchNotesIdsWithCache].
class SearchNotesIdsWithCacheFamily extends Family<AsyncValue<List<String>>> {
  /// See also [SearchNotesIdsWithCache].
  const SearchNotesIdsWithCacheFamily();

  /// See also [SearchNotesIdsWithCache].
  SearchNotesIdsWithCacheProvider call({
    required String keyword,
    bool? hasFiles,
  }) {
    return SearchNotesIdsWithCacheProvider(
      keyword: keyword,
      hasFiles: hasFiles,
    );
  }

  @override
  SearchNotesIdsWithCacheProvider getProviderOverride(
    covariant SearchNotesIdsWithCacheProvider provider,
  ) {
    return call(
      keyword: provider.keyword,
      hasFiles: provider.hasFiles,
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
  String? get name => r'searchNotesIdsWithCacheProvider';
}

/// See also [SearchNotesIdsWithCache].
class SearchNotesIdsWithCacheProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SearchNotesIdsWithCache,
        List<String>> {
  /// See also [SearchNotesIdsWithCache].
  SearchNotesIdsWithCacheProvider({
    required String keyword,
    bool? hasFiles,
  }) : this._internal(
          () => SearchNotesIdsWithCache()
            ..keyword = keyword
            ..hasFiles = hasFiles,
          from: searchNotesIdsWithCacheProvider,
          name: r'searchNotesIdsWithCacheProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchNotesIdsWithCacheHash,
          dependencies: SearchNotesIdsWithCacheFamily._dependencies,
          allTransitiveDependencies:
              SearchNotesIdsWithCacheFamily._allTransitiveDependencies,
          keyword: keyword,
          hasFiles: hasFiles,
        );

  SearchNotesIdsWithCacheProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.keyword,
    required this.hasFiles,
  }) : super.internal();

  final String keyword;
  final bool? hasFiles;

  @override
  FutureOr<List<String>> runNotifierBuild(
    covariant SearchNotesIdsWithCache notifier,
  ) {
    return notifier.build(
      keyword: keyword,
      hasFiles: hasFiles,
    );
  }

  @override
  Override overrideWith(SearchNotesIdsWithCache Function() create) {
    return ProviderOverride(
      origin: this,
      override: SearchNotesIdsWithCacheProvider._internal(
        () => create()
          ..keyword = keyword
          ..hasFiles = hasFiles,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        keyword: keyword,
        hasFiles: hasFiles,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SearchNotesIdsWithCache, List<String>>
      createElement() {
    return _SearchNotesIdsWithCacheProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchNotesIdsWithCacheProvider &&
        other.keyword == keyword &&
        other.hasFiles == hasFiles;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, keyword.hashCode);
    hash = _SystemHash.combine(hash, hasFiles.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchNotesIdsWithCacheRef
    on AutoDisposeAsyncNotifierProviderRef<List<String>> {
  /// The parameter `keyword` of this provider.
  String get keyword;

  /// The parameter `hasFiles` of this provider.
  bool? get hasFiles;
}

class _SearchNotesIdsWithCacheProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SearchNotesIdsWithCache,
        List<String>> with SearchNotesIdsWithCacheRef {
  _SearchNotesIdsWithCacheProviderElement(super.provider);

  @override
  String get keyword => (origin as SearchNotesIdsWithCacheProvider).keyword;
  @override
  bool? get hasFiles => (origin as SearchNotesIdsWithCacheProvider).hasFiles;
}

String _$hashtagNoteIdsWithCacheHash() =>
    r'd134dfbac25f5256ecaad1f98a80a3a3e4481113';

abstract class _$HashtagNoteIdsWithCache
    extends BuildlessAutoDisposeAsyncNotifier<List<String>> {
  late final String hashtag;
  late final bool? hasFiles;

  FutureOr<List<String>> build({
    required String hashtag,
    bool? hasFiles,
  });
}

/// See also [HashtagNoteIdsWithCache].
@ProviderFor(HashtagNoteIdsWithCache)
const hashtagNoteIdsWithCacheProvider = HashtagNoteIdsWithCacheFamily();

/// See also [HashtagNoteIdsWithCache].
class HashtagNoteIdsWithCacheFamily extends Family<AsyncValue<List<String>>> {
  /// See also [HashtagNoteIdsWithCache].
  const HashtagNoteIdsWithCacheFamily();

  /// See also [HashtagNoteIdsWithCache].
  HashtagNoteIdsWithCacheProvider call({
    required String hashtag,
    bool? hasFiles,
  }) {
    return HashtagNoteIdsWithCacheProvider(
      hashtag: hashtag,
      hasFiles: hasFiles,
    );
  }

  @override
  HashtagNoteIdsWithCacheProvider getProviderOverride(
    covariant HashtagNoteIdsWithCacheProvider provider,
  ) {
    return call(
      hashtag: provider.hashtag,
      hasFiles: provider.hasFiles,
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
  String? get name => r'hashtagNoteIdsWithCacheProvider';
}

/// See also [HashtagNoteIdsWithCache].
class HashtagNoteIdsWithCacheProvider
    extends AutoDisposeAsyncNotifierProviderImpl<HashtagNoteIdsWithCache,
        List<String>> {
  /// See also [HashtagNoteIdsWithCache].
  HashtagNoteIdsWithCacheProvider({
    required String hashtag,
    bool? hasFiles,
  }) : this._internal(
          () => HashtagNoteIdsWithCache()
            ..hashtag = hashtag
            ..hasFiles = hasFiles,
          from: hashtagNoteIdsWithCacheProvider,
          name: r'hashtagNoteIdsWithCacheProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$hashtagNoteIdsWithCacheHash,
          dependencies: HashtagNoteIdsWithCacheFamily._dependencies,
          allTransitiveDependencies:
              HashtagNoteIdsWithCacheFamily._allTransitiveDependencies,
          hashtag: hashtag,
          hasFiles: hasFiles,
        );

  HashtagNoteIdsWithCacheProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.hashtag,
    required this.hasFiles,
  }) : super.internal();

  final String hashtag;
  final bool? hasFiles;

  @override
  FutureOr<List<String>> runNotifierBuild(
    covariant HashtagNoteIdsWithCache notifier,
  ) {
    return notifier.build(
      hashtag: hashtag,
      hasFiles: hasFiles,
    );
  }

  @override
  Override overrideWith(HashtagNoteIdsWithCache Function() create) {
    return ProviderOverride(
      origin: this,
      override: HashtagNoteIdsWithCacheProvider._internal(
        () => create()
          ..hashtag = hashtag
          ..hasFiles = hasFiles,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        hashtag: hashtag,
        hasFiles: hasFiles,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<HashtagNoteIdsWithCache, List<String>>
      createElement() {
    return _HashtagNoteIdsWithCacheProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HashtagNoteIdsWithCacheProvider &&
        other.hashtag == hashtag &&
        other.hasFiles == hasFiles;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, hashtag.hashCode);
    hash = _SystemHash.combine(hash, hasFiles.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HashtagNoteIdsWithCacheRef
    on AutoDisposeAsyncNotifierProviderRef<List<String>> {
  /// The parameter `hashtag` of this provider.
  String get hashtag;

  /// The parameter `hasFiles` of this provider.
  bool? get hasFiles;
}

class _HashtagNoteIdsWithCacheProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HashtagNoteIdsWithCache,
        List<String>> with HashtagNoteIdsWithCacheRef {
  _HashtagNoteIdsWithCacheProviderElement(super.provider);

  @override
  String get hashtag => (origin as HashtagNoteIdsWithCacheProvider).hashtag;
  @override
  bool? get hasFiles => (origin as HashtagNoteIdsWithCacheProvider).hasFiles;
}

String _$userNotesIdsWithCacheHash() =>
    r'6cd88a23c810d8068d33866ff33440fc495ed1a6';

abstract class _$UserNotesIdsWithCache
    extends BuildlessAutoDisposeAsyncNotifier<List<String>> {
  late final String userId;
  late final bool? hasFiles;

  FutureOr<List<String>> build({
    required String userId,
    bool? hasFiles,
  });
}

/// See also [UserNotesIdsWithCache].
@ProviderFor(UserNotesIdsWithCache)
const userNotesIdsWithCacheProvider = UserNotesIdsWithCacheFamily();

/// See also [UserNotesIdsWithCache].
class UserNotesIdsWithCacheFamily extends Family<AsyncValue<List<String>>> {
  /// See also [UserNotesIdsWithCache].
  const UserNotesIdsWithCacheFamily();

  /// See also [UserNotesIdsWithCache].
  UserNotesIdsWithCacheProvider call({
    required String userId,
    bool? hasFiles,
  }) {
    return UserNotesIdsWithCacheProvider(
      userId: userId,
      hasFiles: hasFiles,
    );
  }

  @override
  UserNotesIdsWithCacheProvider getProviderOverride(
    covariant UserNotesIdsWithCacheProvider provider,
  ) {
    return call(
      userId: provider.userId,
      hasFiles: provider.hasFiles,
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
  String? get name => r'userNotesIdsWithCacheProvider';
}

/// See also [UserNotesIdsWithCache].
class UserNotesIdsWithCacheProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UserNotesIdsWithCache,
        List<String>> {
  /// See also [UserNotesIdsWithCache].
  UserNotesIdsWithCacheProvider({
    required String userId,
    bool? hasFiles,
  }) : this._internal(
          () => UserNotesIdsWithCache()
            ..userId = userId
            ..hasFiles = hasFiles,
          from: userNotesIdsWithCacheProvider,
          name: r'userNotesIdsWithCacheProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userNotesIdsWithCacheHash,
          dependencies: UserNotesIdsWithCacheFamily._dependencies,
          allTransitiveDependencies:
              UserNotesIdsWithCacheFamily._allTransitiveDependencies,
          userId: userId,
          hasFiles: hasFiles,
        );

  UserNotesIdsWithCacheProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
    required this.hasFiles,
  }) : super.internal();

  final String userId;
  final bool? hasFiles;

  @override
  FutureOr<List<String>> runNotifierBuild(
    covariant UserNotesIdsWithCache notifier,
  ) {
    return notifier.build(
      userId: userId,
      hasFiles: hasFiles,
    );
  }

  @override
  Override overrideWith(UserNotesIdsWithCache Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserNotesIdsWithCacheProvider._internal(
        () => create()
          ..userId = userId
          ..hasFiles = hasFiles,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
        hasFiles: hasFiles,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<UserNotesIdsWithCache, List<String>>
      createElement() {
    return _UserNotesIdsWithCacheProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserNotesIdsWithCacheProvider &&
        other.userId == userId &&
        other.hasFiles == hasFiles;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, hasFiles.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserNotesIdsWithCacheRef
    on AutoDisposeAsyncNotifierProviderRef<List<String>> {
  /// The parameter `userId` of this provider.
  String get userId;

  /// The parameter `hasFiles` of this provider.
  bool? get hasFiles;
}

class _UserNotesIdsWithCacheProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UserNotesIdsWithCache,
        List<String>> with UserNotesIdsWithCacheRef {
  _UserNotesIdsWithCacheProviderElement(super.provider);

  @override
  String get userId => (origin as UserNotesIdsWithCacheProvider).userId;
  @override
  bool? get hasFiles => (origin as UserNotesIdsWithCacheProvider).hasFiles;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
