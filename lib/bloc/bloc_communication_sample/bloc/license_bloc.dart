import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../repository/license_repository.dart';

class LicenseBloc extends Bloc<LicenseEvent, LicenseState> {
  LicenseRepository _licenseRepository;
  LicenseBloc(this._licenseRepository) : super(LicenseState(false)) {
    on<BuyLicenseEvent>((event, emit) async {
      var result = await _licenseRepository.buyLicense();
      emit(LicenseState(result));
    });
  }
}

abstract class LicenseEvent extends Equatable {}

class BuyLicenseEvent extends LicenseEvent {
  @override
  List<Object?> get props => [];
}

class LicenseState extends Equatable {
  bool hasLicense;
  LicenseState(this.hasLicense);
  @override
  List<Object?> get props => [hasLicense];
}