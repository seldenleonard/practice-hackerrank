// https://www.hackerrank.com/challenges/utopian-tree/problem

// STEPS:
// Create a function that accepts the array "n"
// Set index to zero
// Set a variable for height, "h", equal to 1
// Create a while loop for when index is less than the length of array "n" 
//   Within the while loop, create an if/else statement where "h" gets doubled if the n[index] value is odd, or (else) h increases by 1 if n[index] is positive
// Return "h" for each value in array "n"


function utopianTree(n) {
  var index = 0;
  var h = 1;
  while (index < n.length) {
    if (n[index] % 2 !== 0) {
      h *= 2;
      index += 1;
      return h;
    } else {
      h += 1;
      index += 1;
      return h;
    }
  }
}

console.log(utopianTree([0, 1, 4]));