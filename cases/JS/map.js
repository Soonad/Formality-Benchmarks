// Array with 100 zeroes
var nums = Array(100).fill(0);

// increments all numbers 2^20 times
var lim = Math.pow(2, 20);
for (var i = 0; i < lim; ++i) {
  nums = nums.map(x => x + 1);
}

// Outputs result -- Disabled for measuring performance
//console.log(JSON.stringify(nums));
