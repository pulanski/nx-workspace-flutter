import 'package:flame/game.dart';
import '../helpers/direction.dart';
import '../widgets/player.dart';

class GameCore extends FlameGame {
  final Player _player = Player();

  @override
  Future<void> onLoad() async {
    add(_player);
  }

  void onJoypadDirectionChanged(Direction direction) {
    _player.direction = direction;
  }
}
