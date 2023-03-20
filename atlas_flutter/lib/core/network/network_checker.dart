import 'package:atlas_flutter/core/interfaces/network_checker_interface.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkChecker implements NetworkCheckerInterface {
  final InternetConnectionChecker connectionChecker;

  NetworkChecker(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
