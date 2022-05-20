import 'package:flame/components.dart';
import 'package:flame/sprite.dart';
import '../helpers/direction.dart';

class Player extends SpriteAnimationComponent with HasGameRef {
  final double _playerSpeed = 300.0;
  Direction direction = Direction.none;
  final double _idleAnimationSpeed = 0.8;
  final double _animationSpeed = 0.15;
  late final SpriteAnimation _runDownAnimation;
  late final SpriteAnimation _runLeftAnimation;
  late final SpriteAnimation _runUpAnimation;
  late final SpriteAnimation _runRightAnimation;
  late final SpriteAnimation _standingAnimation;
  Player() : super(size: Vector2.all(100.0));

  @override
  Future<void> onLoad() async {
    super.onLoad();
    await _loadAnimations().then((_) => {animation = _standingAnimation});
  }

  @override
  void update(double dt) {
    super.update(dt);
    movePlayer(dt);
  }

  void movePlayer(double dt) {
    switch (direction) {
      case Direction.up:
        moveUp(dt);
        // animation = _runUpAnimation;
        break;
      case Direction.down:
        moveDown(dt);
        // animation = _runDownAnimation;
        break;
      case Direction.left:
        moveLeft(dt);
        // animation = _runLeftAnimation;
        break;
      case Direction.right:
        moveRight(dt);
        animation = _runRightAnimation;
        break;
      case Direction.none:
        animation = _standingAnimation;
        break;
    }
  }

  Future<void> _loadAnimations() async {
    final spriteSheet = SpriteSheet(
      image: await gameRef.images.load('spritesheet_idle_run.png'),
      srcSize: Vector2(45.0, 50.0),
    );

    _standingAnimation = spriteSheet.createAnimation(
        row: 0, stepTime: _idleAnimationSpeed, loop: true, to: 2);

    _runRightAnimation = spriteSheet.createAnimation(
        row: 1, stepTime: _animationSpeed, loop: true, to: 4);
    // spriteSheet.createAnimation(row: , stepTime: stepTime);
    // spriteSheet.createAnimation(row: 0, stepTime: _animationSpeed, to: 4);
    // _runDownAnimation = spriteSheet.createAnimation(
    //   columns: 4,
    //   rows: 1,
    //   interval: _animationSpeed,
    //   anchor: Vector2(0.5, 0.5),
    // );
  }

  void moveDown(double dt) {
    position.add(Vector2(0, dt * _playerSpeed));
  }

  void moveUp(double dt) {
    position.add(Vector2(0, dt * -_playerSpeed));
  }

  void moveLeft(double dt) {
    position.add(Vector2(dt * -_playerSpeed, 0));
  }

  void moveRight(double dt) {
    position.add(Vector2(dt * _playerSpeed, 0));
  }
}
