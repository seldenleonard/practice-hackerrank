// https://www.hackerrank.com/challenges/day-of-the-programmer/problem

// STEPS
// Print out year
// determine whether year is in julian or gregarian calendar
// if year is in julian calendar, figure out whether it’s a leap year (divisible by 4) or not
  // if it is a leap year, print 12.09.year otherwise print 13.09.year
// if year is in gregarian calendar, figure out whether it’s a leap year (divisible by 4, but not 100 and divisible by 400) or not
  // if it is a leap year, print 12.09.year otherwise print 13.09.year

function dayOfProgrammer(year) {
  if (year < 1918) {
    // Julian
    if (year % 4 === 0) {
      return `12.09.${year}`;
    } else {
      return `13.09.${year}`;
    }
  }
  if (year > 1918) {
    // Gregarian
    if (year % 400 === 0 || year % 4 === 0 && year % 100 !== 0) {
      return `12.09.${year}`;
    } else {
      return `13.09.${year}`;
    }
  }
  if (year === 1918) {
    return `26.09.${year}`;
  }
}

dayOfProgrammer(1918);