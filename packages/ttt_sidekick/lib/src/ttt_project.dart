import 'package:sidekick_core/sidekick_core.dart';

class TttProject extends DartPackage {
  TttProject(Directory root) : super.flutter(root, '');

  DartPackage get tttSidekickPackage => DartPackage.fromDirectory(root.directory('packages/ttt_sidekick'))!;

  File get flutterw => root.file('flutterw');

  List<DartPackage>? _packages;
  List<DartPackage> get allPackages {
    return _packages ??= root
        .directory('packages')
        .listSync()
        .whereType<Directory>()
        .mapNotNull((it) => DartPackage.fromDirectory(it))
        .toList()
      ..add(this);
  }
}
