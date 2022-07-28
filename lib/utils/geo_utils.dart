import 'dart:math';

import 'package:fcab_map/bloc/map/map_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';





List<double> UtmToGeo(double utm_x, double utm_y) {
  final List<double> coordenadas_calculadas = [];
  final X_F = utm_x - 200;
  final Y_F = utm_y - 400;
  const Huso = 19;
  const Hemisferio = "S";
  const correccionX = 500;
  const correccionY = 10000000;
  const a = 6378388;
  const b = 6356911.946;
  final e = sqrt(pow(a, 2) - pow(b, 2)) / a;
  final seg_e = sqrt(pow(a, 2) - pow(b, 2)) / b;
  final seg_e2 = pow(seg_e, 2);
  final alfa = 3 * seg_e2 / 4;
  final beta = 5 * pow(alfa, 2) / 3;
  final gama = 35 * pow(alfa, 3) / 27;
  final c = pow(a, 2) / b;
  var aplanamiento = (a - b) / a;
  final X = X_F - 500000;
  final Y = Y_F - 10000000;
  final FI = Y / (6366197.724 * 0.9996);
  final v = c * 0.9996 / sqrt(1 + seg_e2 * pow(cos(FI), 2));
  final Pa = X / v;
  final A1 = sin(2 * FI);
  final A2 = A1 * pow(cos(FI), 2);
  final J2 = FI + A1 / 2;
  final J4 = (3 * J2 + A2) / 4;
  final J6 = (5 * J4 + A2 * pow(cos(FI), 2)) / 3;
  final B0 = 0.9996 * c * (FI - alfa * J2 + beta * J4 - gama * J6);
  final b_2 = (Y - B0) / v;
  final zeta = seg_e2 * pow(Pa, 2) * pow(cos(FI), 2) / 2;
  final Xi = Pa * (1 - zeta / 3);
  final Nu = b_2 * (1 - zeta) + FI;
  final senhXi = (exp(Xi) - exp(Xi * -1)) / 2;
  final dlambda = atan(senhXi / cos(Nu));
  final Tau = atan(cos(dlambda) * tan(Nu));

  final latitudCalculada = (FI +
          (1 +
                  seg_e2 * pow(cos(FI), 2) -
                  1.5 * seg_e2 * sin(FI) * cos(FI) * (Tau - FI)) *
              (Tau - FI)) *
      180 /
      pi;
  final longitudCalculada = dlambda * 180 / pi + Huso * 6 - 183;
  coordenadas_calculadas.add(latitudCalculada);
  coordenadas_calculadas.add(longitudCalculada);
  return coordenadas_calculadas;
}


void goToMap(BuildContext context, LatLng latLng) {
    final provider =BlocProvider.of<MapBloc>(context);
    provider.mapController
        ?.move(latLng, 13);
    Navigator.pop(context);
  }