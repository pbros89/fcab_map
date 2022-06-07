part of 'detail_tren_bloc.dart';


abstract class DetailTrenEvent extends Equatable {
  const DetailTrenEvent();

  @override
  List<Object?> get props => [];
}

class DetailTrenInitEvent extends DetailTrenEvent {}

class DetailTrenLoadEvent extends DetailTrenEvent {
  final TrenPoint trenPoint;
  const DetailTrenLoadEvent({required this.trenPoint});
}
