# Logs the Fibonacci numbers up to 100.

[a, b] = [0, 1]
while b <= 100
  console.log b
  [a, b] = [b, a + b]