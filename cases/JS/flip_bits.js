var bits = [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0,[]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]];

function flip(bits) {
  switch (bits[0]) {
    case 0 : return [1, flip(bits[1])];
    case 1 : return [0, flip(bits[1])];
    default : return [];
  }
}

var lim = Math.pow(2, 20);
var i;
for (i = 0; i < lim; i++) {
  bits = flip(bits);
  //console.log(JSON.stringify(bits));
}
console.log(i)
console.log(JSON.stringify(bits));
