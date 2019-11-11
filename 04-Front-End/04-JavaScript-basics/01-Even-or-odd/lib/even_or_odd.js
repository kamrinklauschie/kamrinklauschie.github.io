const evenOrOdd = (number) => {
  // TODO: this should return "even" if the number is even, "odd" otherwise
  const isEven = (number % 2 === 0);
  const result = (isEven ? "even" : "odd");
  return result;
};

module.exports = evenOrOdd; // Do not remove. We need this for the spec to know about your method.
