// TODO: React to a click on the button!

const button = document.querySelector('#clickme');
button.addEventListener('click', (event) => {
  event.currentTarget.classList.add("disabled");
  event.currentTarget.innerHTML = "Bingo!";
});
