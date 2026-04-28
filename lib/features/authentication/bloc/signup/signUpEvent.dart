class SignUpEvent {}


class SelectGender extends SignUpEvent {
  final String gender;
  SelectGender(this.gender);
}

class MoveToNextPageEvent extends SignUpEvent{
}

class BackToLastPageEvent extends SignUpEvent{
}



class SelectInterestEvent extends SignUpEvent{
  final String selectedInterest;
  SelectInterestEvent(this.selectedInterest);
}