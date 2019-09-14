function exp_mod(a, x, N) {
  // Create an array from `0` til `N`
  var array = [];
  for (var i = 0; i < N; ++i)
    array[i] = i;

  // Compute `a ^ x`
  var ax = Math.pow(a, x);

  // Rotate left the array `ax` times
  for (var i = 0; i < ax; ++i) {
    var first = array[0];
    for (var j = 0; j < array.length - 1; ++j)
      array[j] = array[j + 1];
    array[array.length - 1] = first;
  }

  // Return the first element
  return array[0];
}

console.log(exp_mod(3, 20, 13));
