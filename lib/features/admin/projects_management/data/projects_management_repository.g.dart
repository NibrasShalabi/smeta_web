// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_management_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(projectsManagementRepository)
final projectsManagementRepositoryProvider =
    ProjectsManagementRepositoryProvider._();

final class ProjectsManagementRepositoryProvider
    extends
        $FunctionalProvider<
          ProjectsManagementRepository,
          ProjectsManagementRepository,
          ProjectsManagementRepository
        >
    with $Provider<ProjectsManagementRepository> {
  ProjectsManagementRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'projectsManagementRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$projectsManagementRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProjectsManagementRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProjectsManagementRepository create(Ref ref) {
    return projectsManagementRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProjectsManagementRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProjectsManagementRepository>(value),
    );
  }
}

String _$projectsManagementRepositoryHash() =>
    r'378cceba0994255a7a67c1eadb0cda784248a86c';
