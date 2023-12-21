int checkIfNull(int? value) {
  return value ?? 0;
}

void main() {
  String? age = null;
  print(checkIfNull(null));
}
