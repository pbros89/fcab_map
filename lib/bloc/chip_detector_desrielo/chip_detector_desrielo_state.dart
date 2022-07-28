part of 'chip_detector_desrielo_bloc.dart';

@immutable
abstract class ChipDetectorDesrieloState {
  final List<DetectorDesrieloPoint> detectoresDesrielo;
  const ChipDetectorDesrieloState(this.detectoresDesrielo);
}

class ChipDetectorDesrieloInitial extends ChipDetectorDesrieloState {
  ChipDetectorDesrieloInitial() : super([]);
}


class ChipDetectorDesrieloLoading extends ChipDetectorDesrieloState {
  ChipDetectorDesrieloLoading() : super([]);
}

class ChipDetectorDesrieloLoaded extends ChipDetectorDesrieloState {
  const ChipDetectorDesrieloLoaded(List<DetectorDesrieloPoint> estaciones) : super(estaciones);
}