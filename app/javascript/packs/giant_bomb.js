const fetchGames = (e) => {
  const apiKey = '2f6e5965d88deb5064ec6657f3f15a42c9274e70';
  const query = e.target.value;
  const url = `https://www.giantbomb.com/api/game/3030-4725/?api_key=${apiKey}&format=json&query=${query}&resources=game`;
  e.preventDefault();
  fetch(url)
    .then(response => response.json())
    .then((data) => {
      console.log(data);
    });
};

const giantBomb = () => {
  const search = document.getElementById('steam-search');



  search.addEventListener('keyup', fetchGames);
};

export { giantBomb };
