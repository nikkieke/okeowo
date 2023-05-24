abstract class Routes {
  Routes._();
  static const SPLASHSCREEN = Paths.SPLASHSCREEN;
  static const ENTRYPOINT = Paths.ENTRYPOINT;
  static const HOME = Paths.HOME;
  static const TRANSACTIONS = Paths.TRANSACTIONS;
  static const CARDS = Paths.CARDS;
  static const SETTINGS = Paths.SETTINGS;
  static const GENERATE_VOUCHER = Paths.GENERATE_VOUCHER;


}



abstract class Paths {
  Paths._();

  static const ENTRYPOINT = '/entryPoint';
  static const SPLASHSCREEN = '/splashscreen';
  static const HOME = '/home';
  static const TRANSACTIONS = '/transactions';
  static const CARDS = '/cards';
  static const SETTINGS = '/settings';
  static const GENERATE_VOUCHER = '/generateVoucher';
}