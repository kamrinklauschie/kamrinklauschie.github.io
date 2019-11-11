const sumOfNegative = (numbers) => {
  // TODO: You are getting a `numbers` array. Return the sum of **negative** numbers only.
  const negNumbers = [];
  numbers.forEach((number) => {
    if (number < 0) { negNumbers.push(number); }
  });
  let sum = 0;
  negNumbers.forEach((negNumber) => {
    sum += negNumber;
  });
  return sum;
};

module.exports = sumOfNegative; // Do not remove.
