const list = document.getElementById('videogames-list');

const fetchGames = (e) => {
  list.innerHTML = '';
  const apiKey = '2f6e5965d88deb5064ec6657f3f15a42c9274e70';
  const query = e.target.value;
  const url = `https://www.giantbomb.com/api/search/?api_key=${apiKey}&format=json&query=${query}&resources=game`;
  const proxyurl = "https://cors-anywhere.herokuapp.com/";
  e.preventDefault();
  fetch(proxyurl + url)
    .then(response => response.json())
    .then((data) => {
      console.log(data.results);
      data.results.forEach((result) => {
        list.insertAdjacentHTML('beforeend',
          `
          <a href=''>
            <div class="videogame">
              <div class="videogame-title">
                <img src="${result.image.icon_url}">
                <h5>${result.name}</h5>
              </div>
              <div class="description">
                ${result.description}
              </div>
            </div>
          </a>
          `
          );
      });
    });
};

const homeSearch = () => {
  const search = document.getElementById('steam-search');
  search.addEventListener('keyup', fetchGames);
};

export { homeSearch };
