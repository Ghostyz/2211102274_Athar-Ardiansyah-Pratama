int factorial(int number) {
  if (number <= 0) {
    // Kondisi berhenti (Base case)
    return 1;
  } else {
    return number * factorial(number - 1);
    // Rekursi (memanggil dirinya sendiri)
  }
}

void main() {
  int angka = 5; // Deklarasi variabel angka
  int hasil = factorial(angka); // Memanggil fungsi factorial

  print('Faktorial dari $angka adalah $hasil');
}
