// https://www.hackerrank.com/challenges/drawing-book/problem

// STEPS

// write conditional that says if n divided by 2 is less than p start from the back of the book
//   if n divided by 2 is more than p, start from the front of the book
// when starting at back of book, if total number of pages is even, first subract 1 and add 1 to a page counter, then subtract 2 and add 1 to page counter until you get to the page number
// when starting at the front of the book, add 2 to the index and add 1 to the counter until you get to the page number
// print counter

function pageCount(n, p) {
  let counter = 0;
  if (n / 2 <= p) {
    //start from back
    let startingPage = n;
    if (n % 2 === 0) {
      startingPage = startingPage - 1;
      counter += 1;
    }
    while (startingPage >= p) {
      startingPage -= 2;
      counter += 1;
    }
    return counter;
  } else if (n / 2 > p) {
    //start from front
    let startingPage = 1;
    return "start from front";
  }
}
console.log(pageCount(6, 4));