enum Fruts {
  pineapple,
  apple,
  melon,
  lemon;

  String get iconPath => switch (this) {
        Fruts.pineapple => 'assets/images/pineapple.svg',
        Fruts.apple => 'assets/images/apple.svg',
        Fruts.melon => 'assets/images/melon.svg',
        Fruts.lemon => 'assets/images/lemon.svg',
      };
}
