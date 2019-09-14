var ref_array = [15, 30, 29, 28, 10, 26, 25, 24, 23, 22, 21, 4, 19, 18, 17,
                 16, 31, 14, 13, 12, 11, 27, 9, 8, 7, 6, 5, 20, 3, 2, 1, 0];
var array = [];
var lim = Math.pow(2, 22);

for (var i = 0; i < lim; i++) {
  array = ref_array;
  array.sort(function(a, b){return a-b});
}

console.log(JSON.stringify(array));
