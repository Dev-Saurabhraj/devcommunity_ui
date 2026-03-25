import 'package:devcommunity/screens/bloc/signup/signUpEvent.dart';
import 'package:devcommunity/screens/bloc/signup/signupState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBloc extends Bloc<SignUpEvent, GenderState>{
  SignUpBloc() : super(GenderState(count: 0, selectedInterests: {})){
    on<SelectGender>((event, emit){
      emit(state.copyWith(selectedGender: event.gender));
    });
    on<MoveToNextPageEvent>((event, emit){
      emit(state.copyWith(count: state.count +1));
    });
    on<BackToLastPageEvent>((event, emit){
      if(state.count >0){
      emit(state.copyWith(count: state.count -1 ));
      }

    });

    on<SelectInterestEvent>((event, emit){
      final updated = Set<String>.from(state.selectedInterests);
      if(updated.contains(event.selectedInterest)){
        updated.remove(event.selectedInterest);
      }else{
        updated.add(event.selectedInterest);
      }
      emit(state.copyWith(selectedInterests: updated));
    });
  }
}