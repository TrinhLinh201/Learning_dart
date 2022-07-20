import 'dart:ffi';
import 'dart:io';

void main() {
  String str;
  print("input string:");
  str = stdin.readLineSync()!;

  print("Uppercase: ${str.toUpperCase()}");
  print("Lowercase: ${str.toLowerCase()}");
}
