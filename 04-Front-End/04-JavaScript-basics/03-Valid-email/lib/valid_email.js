const valid = (email) => {
  // TODO: return true if the `email` string has the right pattern!
  const pattern = (/^[\w+.]+@\w+\.\w{2,}(?:\.\w{2})?$/);
  return pattern.test(email);
};

module.exports = valid; // Do not remove.
