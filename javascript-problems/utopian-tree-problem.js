// https://www.hackerrank.com/challenges/utopian-tree/problem

// STEPS:
// Create a function that accepts the array "n"
// Set index to zero
// Set a variable for height, "h", equal to 1
// Create a while loop for when index is less than the length of array "n" 
//   Within the while loop, create an if/else statement where "h" gets doubled if the n[index] value is odd, or (else) h increases by 1 if n[index] is positive
// Return "h" for each value in array "n" (so "h" must be reset for each iteration of the while loop)

// First Attempt - Unsuccessful --> Output = 2
// function utopianTree(n) {
//   var index = 0;
//   var h = 1;
//   while (index < n.length) {
//     if (n[index] % 2 !== 0) {
//       h *= 2;
//       index += 1;
//       return h;
//     } else {
//       h += 1;
//       index += 1;
//       return h;
//     }
//   }
// }

// Second Attempt - Unsuccessful --> Output = undefined
// function utopianTree(n) {
//   var index = 0;
//   var h = 1;
//   n.forEach(season => {
//     if (season % 2 !== 0) {
//       h *= 2;
//     } else {
//       h += 1;
//     }
//     return h;
//   });
// }

// Third Attempt - Successful (but HackerRank Doesnt Like It)
// function utopianTree(n) {
//   var h = 1;
//   for (let i = 0; i < n.length; i++) {
//     const time = n[i];
//     if (time % 2 !== 0) {
//       h *= 2;
//       console.log(h);
//     } else {
//       h += 1;
//       console.log(h);
//     }
//   }
// }

// Fourth Attempt - Successful (but HackerRank Doesnt Like It)
function utopianTree(n) {
  var h = 1;
  var output = [];
  for (let i = 0; i < n.length; i++) {
    const time = n[i];
    if (time % 2 !== 0) {
      h *= 2;
      output.push(h);
    } else {
      h += 1;
      output.push(h);
    }
  }
  return output;
}

console.log(utopianTree([0, 1, 4]));