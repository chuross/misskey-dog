// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$textStateHash() => r'24f16e49ad870ef41f0cdd42deed53d0d66b02d0';

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

abstract class _$TextState extends BuildlessAutoDisposeNotifier<String> {
  late final String instanceUuid;

  String build({
    required String instanceUuid,
  });
}

/// See also [TextState].
@ProviderFor(TextState)
const textStateProvider = TextStateFamily();

/// See also [TextState].
class TextStateFamily extends Family<String> {
  /// See also [TextState].
  const TextStateFamily();

  /// See also [TextState].
  TextStateProvider call({
    required String instanceUuid,
  }) {
    return TextStateProvider(
      instanceUuid: instanceUuid,
    );
  }

  @override
  TextStateProvider getProviderOverride(
    covariant TextStateProvider provider,
  ) {
    return call(
      instanceUuid: provider.instanceUuid,
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
  String? get name => r'textStateProvider';
}

/// See also [TextState].
class TextStateProvider
    extends AutoDisposeNotifierProviderImpl<TextState, String> {
  /// See also [TextState].
  TextStateProvider({
    required String instanceUuid,
  }) : this._internal(
          () => TextState()..instanceUuid = instanceUuid,
          from: textStateProvider,
          name: r'textStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$textStateHash,
          dependencies: TextStateFamily._dependencies,
          allTransitiveDependencies: TextStateFamily._allTransitiveDependencies,
          instanceUuid: instanceUuid,
        );

  TextStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.instanceUuid,
  }) : super.internal();

  final String instanceUuid;

  @override
  String runNotifierBuild(
    covariant TextState notifier,
  ) {
    return notifier.build(
      instanceUuid: instanceUuid,
    );
  }

  @override
  Override overrideWith(TextState Function() create) {
    return ProviderOverride(
      origin: this,
      override: TextStateProvider._internal(
        () => create()..instanceUuid = instanceUuid,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        instanceUuid: instanceUuid,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<TextState, String> createElement() {
    return _TextStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TextStateProvider && other.instanceUuid == instanceUuid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, instanceUuid.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TextStateRef on AutoDisposeNotifierProviderRef<String> {
  /// The parameter `instanceUuid` of this provider.
  String get instanceUuid;
}

class _TextStateProviderElement
    extends AutoDisposeNotifierProviderElement<TextState, String>
    with TextStateRef {
  _TextStateProviderElement(super.provider);

  @override
  String get instanceUuid => (origin as TextStateProvider).instanceUuid;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
