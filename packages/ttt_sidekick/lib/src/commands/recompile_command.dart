import 'package:args/command_runner.dart';
import 'package:dcli/dcli.dart' as dcli;
import 'package:sidekick_core/sidekick_core.dart';
import 'package:ttt_sidekick/ttt_sidekick.dart';

class RecompileCommand extends Command {
  @override
  final String description = 'Recompiles the ttt sidekick';

  @override
  final String name = 'recompile';

  @override
  Future<void> run() async {
    final installScript = tttProject.root.file('packages/ttt_sidekick/tool/install.sh');
    final process = dcli.start(installScript.path, nothrow: true, terminal: true);
    exit(process.exitCode ?? 0);
  }
}
