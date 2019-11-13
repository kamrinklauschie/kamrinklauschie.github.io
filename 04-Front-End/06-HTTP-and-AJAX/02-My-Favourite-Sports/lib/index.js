// TODO: write your code here!

// Listen to all squares
const buttons = document.querySelectorAll(".clickable");

buttons.forEach((button) => {
// On click
  button.addEventListener('click', (event) => {
    const clickable = event.currentTarget;
    // Make active
    clickable.classList.toggle('active');
  });
});
