import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:ttt_sidekick/src/commands/deps_command.dart';
import 'package:ttt_sidekick/src/commands/update_sidekick_command.dart';
import 'package:ttt_sidekick/src/ttt_command_runner.dart';
import 'package:ttt_sidekick/src/ttt_project.dart';
import 'package:sidekick_core/sidekick_core.dart';

late TttProject tttProject;

class TttSidekick {
  /// Parses args and executes commands
  Future<void> runWithArgs(List<String> args) async {
    initializeSidekick(
      name: 'ttt',
      mainProjectPath: '.',
    );

    tttProject = TttProject(mainProject.root);

    final runner = TttCommandRunner()
      ..addCommand(UpdateSidekickCommand())
      ..addCommand(FlutterCommand())
      ..addCommand(DartCommand())
      ..addCommand(DepsCommand())
      ..addCommand(DartAnalyzeCommand());

    if (args.isEmpty) {
      print(runner.usage);
      exit(0);
    }

    try {
      await runner.run(args);
    } on UsageException catch (e) {
      print(e.usage);
      exit(1);
    }
  }
}
