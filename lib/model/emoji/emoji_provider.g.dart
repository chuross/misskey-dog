// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localEmojiHash() => r'eb22f731a78dc4fbb78a769125b0529f1311d0e0';

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

/// See also [localEmoji].
@ProviderFor(localEmoji)
const localEmojiProvider = LocalEmojiFamily();

/// See also [localEmoji].
class LocalEmojiFamily extends Family<AsyncValue<CustomEmoji>> {
  /// See also [localEmoji].
  const LocalEmojiFamily();

  /// See also [localEmoji].
  LocalEmojiProvider call({
    required String emojiName,
  }) {
    return LocalEmojiProvider(
      emojiName: emojiName,
    );
  }

  @override
  LocalEmojiProvider getProviderOverride(
    covariant LocalEmojiProvider provider,
  ) {
    return call(
      emojiName: provider.emojiName,
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
  String? get name => r'localEmojiProvider';
}

/// See also [localEmoji].
class LocalEmojiProvider extends AutoDisposeFutureProvider<CustomEmoji> {
  /// See also [localEmoji].
  LocalEmojiProvider({
    required String emojiName,
  }) : this._internal(
          (ref) => localEmoji(
            ref as LocalEmojiRef,
            emojiName: emojiName,
          ),
          from: localEmojiProvider,
          name: r'localEmojiProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$localEmojiHash,
          dependencies: LocalEmojiFamily._dependencies,
          allTransitiveDependencies:
              LocalEmojiFamily._allTransitiveDependencies,
          emojiName: emojiName,
        );

  LocalEmojiProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.emojiName,
  }) : super.internal();

  final String emojiName;

  @override
  Override overrideWith(
    FutureOr<CustomEmoji> Function(LocalEmojiRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LocalEmojiProvider._internal(
        (ref) => create(ref as LocalEmojiRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        emojiName: emojiName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CustomEmoji> createElement() {
    return _LocalEmojiProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocalEmojiProvider && other.emojiName == emojiName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, emojiName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LocalEmojiRef on AutoDisposeFutureProviderRef<CustomEmoji> {
  /// The parameter `emojiName` of this provider.
  String get emojiName;
}

class _LocalEmojiProviderElement
    extends AutoDisposeFutureProviderElement<CustomEmoji> with LocalEmojiRef {
  _LocalEmojiProviderElement(super.provider);

  @override
  String get emojiName => (origin as LocalEmojiProvider).emojiName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
