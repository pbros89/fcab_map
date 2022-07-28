part of 'chip_detector_desrielo_bloc.dart';

@immutable
abstract class ChipDetectorDesrieloEvent {
  const ChipDetectorDesrieloEvent();
}

class ChipDetectorDesrieloSearchEvent extends ChipDetectorDesrieloEvent {
  final String search;
  final List<DetectorDesrieloPoint> detectoresDesrielo;

  const ChipDetectorDesrieloSearchEvent(this.search, this.detectoresDesrielo);
}