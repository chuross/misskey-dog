// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_editing_controller_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$unsafeTextEditingControllerHash() =>
    r'0c06ca7ceb82cbb56b798504284a1669661ea2c3';

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

/// See also [unsafeTextEditingController].
@ProviderFor(unsafeTextEditingController)
const unsafeTextEditingControllerProvider = UnsafeTextEditingControllerFamily();

/// See also [unsafeTextEditingController].
class UnsafeTextEditingControllerFamily extends Family<TextEditingController> {
  /// See also [unsafeTextEditingController].
  const UnsafeTextEditingControllerFamily();

  /// See also [unsafeTextEditingController].
  UnsafeTextEditingControllerProvider call({
    required String uuid,
  }) {
    return UnsafeTextEditingControllerProvider(
      uuid: uuid,
    );
  }

  @override
  UnsafeTextEditingControllerProvider getProviderOverride(
    covariant UnsafeTextEditingControllerProvider provider,
  ) {
    return call(
      uuid: provider.uuid,
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
  String? get name => r'unsafeTextEditingControllerProvider';
}

/// See also [unsafeTextEditingController].
class UnsafeTextEditingControllerProvider
    extends AutoDisposeProvider<TextEditingController> {
  /// See also [unsafeTextEditingController].
  UnsafeTextEditingControllerProvider({
    required String uuid,
  }) : this._internal(
          (ref) => unsafeTextEditingController(
            ref as UnsafeTextEditingControllerRef,
            uuid: uuid,
          ),
          from: unsafeTextEditingControllerProvider,
          name: r'unsafeTextEditingControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$unsafeTextEditingControllerHash,
          dependencies: UnsafeTextEditingControllerFamily._dependencies,
          allTransitiveDependencies:
              UnsafeTextEditingControllerFamily._allTransitiveDependencies,
          uuid: uuid,
        );

  UnsafeTextEditingControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.uuid,
  }) : super.internal();

  final String uuid;

  @override
  Override overrideWith(
    TextEditingController Function(UnsafeTextEditingControllerRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UnsafeTextEditingControllerProvider._internal(
        (ref) => create(ref as UnsafeTextEditingControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        uuid: uuid,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<TextEditingController> createElement() {
    return _UnsafeTextEditingControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UnsafeTextEditingControllerProvider && other.uuid == uuid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, uuid.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UnsafeTextEditingControllerRef
    on AutoDisposeProviderRef<TextEditingController> {
  /// The parameter `uuid` of this provider.
  String get uuid;
}

class _UnsafeTextEditingControllerProviderElement
    extends AutoDisposeProviderElement<TextEditingController>
    with UnsafeTextEditingControllerRef {
  _UnsafeTextEditingControllerProviderElement(super.provider);

  @override
  String get uuid => (origin as UnsafeTextEditingControllerProvider).uuid;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
