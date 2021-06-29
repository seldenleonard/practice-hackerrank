// https://www.hackerrank.com/challenges/the-hurdle-race/problem

// A video player plays a game in which the character competes in a hurdle race. Hurdles are of varying heights, and the characters have a maximum height they can jump. There is a magic potion they can take that will increase their maximum jump height by 1 unit for each dose. How many doses of the potion must the character take to be able to jump all of the hurdles. If the character can already clear all of the hurdles, return 0.

// STEPS
// Create a function (hurdleRace) that accepts an integer ("height") and an array ("k")
// Define a "maxHeight" variable, which will be the largest integer in the array
// Set maxHeight initially, to the first value in the array
// Create an index ("i") to iterate through the array, and set it to 1, which will correspond to the second value of the array, height[1]
// Iterate through the array and if maxHeight is less than any value in the array, set maxHeight equal to that value
// Define the variable "doses" as maxHeight - k
// Create an if statement where if k is greater than or equal to maxHeight, return zero. If k is less than maxHeight, then return the value of "doses"

function hurdleRace(k, height) {
  let maxHeight = height[0];
  let i = 1;
  let doses = maxHeight - k;
  while (i < height.length) {
    maxHeight = height[i];
    i += 1;
  }
  if (maxHeight - k >= maxHeight) {
    0;
  } else {
    doses;
  }
}

