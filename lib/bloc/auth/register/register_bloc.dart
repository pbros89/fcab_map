import 'dart:async';

import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

part 'register_event.dart';
part 'register_state.dart';

// class RegisterBloc extends Bloc<ChipEstacionEvent, ChipEstacionState>  {

//   final username = TextFieldBloc();
//   final password = TextFieldBloc();
//   final rePassword = TextFieldBloc();

//   RegisterBloc(): super(isLoading: true){
//     addFieldBlocs(fieldBlocs: [
//       username, password, rePassword
//     ]);
//   }


//   @override
//   FutureOr<void> onSubmitting() async {
//    try {
//       await Future<void>.delayed(const Duration(milliseconds: 500));

//       emitSuccess(canSubmitAgain: true);
//     } catch (e) {
//       emitFailure();
//     }
//   }
  
  
// }
