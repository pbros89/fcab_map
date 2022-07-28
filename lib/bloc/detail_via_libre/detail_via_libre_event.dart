part of 'detail_via_libre_bloc.dart';

abstract class DetailViaLibreEvent extends Equatable {
  const DetailViaLibreEvent();

  @override
  List<Object?> get props => [];
}
class DetailViaLibreInitEvent extends DetailViaLibreEvent {}

class DetailViaLibreLoadEvent extends DetailViaLibreEvent {
  final ViaLibreLine viaLibreLine;
  const DetailViaLibreLoadEvent({required this.viaLibreLine});
}
