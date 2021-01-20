// https://www.hackerrank.com/challenges/counting-valleys/problem?h_r=internal-search

// STEPS
// Loop and print
// set sea level variable to keep track of above or below zero
// loop through and add or subract one based off of D or U

function countingValleys(steps, path) {
  function countingValleys(steps, path) {
    var i = 0;
    var seaLevel = 0;
    var valleyCounter = 0;
    if (path[i] === "D") {
      console.log(`valley counter ${valleyCounter += 1}`);
      console.log(`sea level counter ${seaLevel -= 1}`);
      i += 1;
    } else if (path[i] === "U") {
      console.log(`sea level counter ${seaLevel += 1}`);
      i += 1;
    }
    while (i < steps) {
      if (path[i] === "D") {
        console.log(`sea level counter in D ${seaLevel -= 1}`);
      } else if (path[i] === "U") {
        console.log(`sea level counter in U ${seaLevel += 1}`);
      }
      if (seaLevel === 0 && path[i + 1] === "D") {
        console.log(`valley counter ${valleyCounter += 1}`);
      }
      i += 1;
    }
    return valleyCounter;
  }
}
console.log(countingValleys(8, "UDDDUDUU"));