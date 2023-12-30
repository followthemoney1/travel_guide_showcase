part of 'edit_data_cubit.dart';

@freezed
class EditDataState with _$EditDataState {
  factory EditDataState.initial() = _Initial;
  factory EditDataState.editProcess() = _EditProcess;
  factory EditDataState.deleteSuccess() = _DeleteSuccess;
  factory EditDataState.editError(ErrorResponse message) = _EditError;
  factory EditDataState.subscribeSuccess() = _SubscribeSuccess;
  factory EditDataState.editSuccess() = _EditSuccess;
  factory EditDataState.loadedSubscription() = _LoadedSubscription;
  factory EditDataState.noNetworkConnection() = _NoNetworkConnection;
}
