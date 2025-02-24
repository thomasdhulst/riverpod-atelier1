// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cityHash() => r'141e76ec773d6418f0d2bc71530a63dd1be27211';

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

/// See also [city].
@ProviderFor(city)
const cityProvider = CityFamily();

/// See also [city].
class CityFamily extends Family<AsyncValue<City>> {
  /// See also [city].
  const CityFamily();

  /// See also [city].
  CityProvider call(String postalCode) {
    return CityProvider(postalCode);
  }

  @override
  CityProvider getProviderOverride(covariant CityProvider provider) {
    return call(provider.postalCode);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'cityProvider';
}

/// See also [city].
class CityProvider extends AutoDisposeFutureProvider<City> {
  /// See also [city].
  CityProvider(String postalCode)
    : this._internal(
        (ref) => city(ref as CityRef, postalCode),
        from: cityProvider,
        name: r'cityProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product') ? null : _$cityHash,
        dependencies: CityFamily._dependencies,
        allTransitiveDependencies: CityFamily._allTransitiveDependencies,
        postalCode: postalCode,
      );

  CityProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postalCode,
  }) : super.internal();

  final String postalCode;

  @override
  Override overrideWith(FutureOr<City> Function(CityRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: CityProvider._internal(
        (ref) => create(ref as CityRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postalCode: postalCode,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<City> createElement() {
    return _CityProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CityProvider && other.postalCode == postalCode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postalCode.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CityRef on AutoDisposeFutureProviderRef<City> {
  /// The parameter `postalCode` of this provider.
  String get postalCode;
}

class _CityProviderElement extends AutoDisposeFutureProviderElement<City>
    with CityRef {
  _CityProviderElement(super.provider);

  @override
  String get postalCode => (origin as CityProvider).postalCode;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
