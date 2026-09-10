// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_management_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProjectsManagementController)
final projectsManagementControllerProvider =
    ProjectsManagementControllerProvider._();

final class ProjectsManagementControllerProvider
    extends
        $AsyncNotifierProvider<
          ProjectsManagementController,
          ProjectsManagement?
        > {
  ProjectsManagementControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'projectsManagementControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$projectsManagementControllerHash();

  @$internal
  @override
  ProjectsManagementController create() => ProjectsManagementController();
}

String _$projectsManagementControllerHash() =>
    r'8ba5a759aceae54d0b190d97d8e25df2ae2bf68b';

abstract class _$ProjectsManagementController
    extends $AsyncNotifier<ProjectsManagement?> {
  FutureOr<ProjectsManagement?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<ProjectsManagement?>, ProjectsManagement?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ProjectsManagement?>, ProjectsManagement?>,
              AsyncValue<ProjectsManagement?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
