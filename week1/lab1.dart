void main() {
  String id = '6431501107';
  var sum = 0;
  for (int i = 0; i < id.length; i++) {
    sum += int.parse(id[i]);
  }
  print(sum);
}
