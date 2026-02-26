void main() {
  double tempFarenheit = 86;

  double tempCelsius = (tempFarenheit - 32) / 1.8;

  print("${tempFarenheit}F = ${tempCelsius.toStringAsFixed(1)}C"); 
}