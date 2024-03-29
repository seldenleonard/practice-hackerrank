// https://www.hackerrank.com/challenges/drawing-book/problem

// STEPS
// Write conditional that says if n divided by 2 is less than p start from the back of the book
//  --- If n divided by 2 is more than p, start from the front of the book
// When starting at back of book, if total number of pages is even, first subract 1 and add 1 to a page counter, then subtract 2 and add 1 to page counter until you get to the page number
// When starting at the front of the book, add 2 to the index and add 1 to the counter until you get to the page number
// Print counter

function pageCount(n, p) {
  let counter = 0;
  let startingPage = 0;
  if (n % 2 !== 0 && n - 1 === p || p === 1) {
    counter = 0;
  } else if (n / 2 < p) {
    //Start From Back
    if (n % 2 !== 0) {
      startingPage = n - 1;
    } else {
      startingPage = n;
    }
    while (startingPage > p) {
      startingPage -= 2;
      counter += 1;
    }
  } else if (n / 2 >= p) {
    //Start From Front
    startingPage = 1;
    while (startingPage < p) {
      startingPage += 2;
      counter += 1;
    }
  }
  return counter;
}
console.log(pageCount(6, 3));