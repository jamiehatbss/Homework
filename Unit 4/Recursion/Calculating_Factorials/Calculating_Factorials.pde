//for loop to calculate factorial
int factorial(int n) {
  int f = 1;
//Using a regular loop to compute factorial
  for (int i = 0; i < n; i++) {
    f = f * (i+1);
  }
  return f;
}
//The factorial of n is defined as n times the factorial of n-1.

// factorial function that calls itself
int factorial(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n * factorial(n-1);
  }
}
