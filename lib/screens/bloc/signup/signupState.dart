class SignUpState {}

class GenderState extends SignUpState {
  final int count;
  final String? selectedGender;
  final Set<String> selectedInterests;

  GenderState({
    this.selectedGender,
    required this.count,
    required this.selectedInterests,
  });

  GenderState copyWith({
    int? count,
    String? selectedGender,
    Set<String>? selectedInterests,
  }) {
    return GenderState(
      count: count ?? this.count,
      selectedGender: selectedGender ?? this.selectedGender,
      selectedInterests: selectedInterests ?? this.selectedInterests,
    );
  }
}

class SelectedInterestState extends SignUpState {
  final Set<String> selectedInterest;

  SelectedInterestState(this.selectedInterest);
}
