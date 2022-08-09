const api_key=`eaf12241-7ae5-4090-ae7a-d4fe7a06dbc1`;

const getToken = async () => {
  const result = await fetch(`https://api.thedogapi.com/api/token`, 
  {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
      Authorization: "Basic " + btoa(api_key),
    },
    body: "grant_type=client_credentials",
  });

  const data = await result.json();
  return data.access_token;
};

const getBreed = async (token,breed_id) => {
  const result = await fetch(
    `https://api.thedogapi.com/v1/breeds/${breed_id}`,
    {
      method: "GET",
      headers: { Authorization: "Bearer " + token },
    }
  );

  const data = await result.json();
  return data.breed_id.items;
};

const getImages = async (token, image_id) => {
  const limit = 10;

  const result = await fetch(
    `https://api.thedogapi.com/v1/images/${image_id}`,
    {
      method: "GET",
      headers: { Authorization: "Bearer " + token },
    }
  );

  const data = await result.json();
  return data.image_id.items;
};

const loadGenres = async () => {
  const token = await getToken();
  const breed = await getBreed(token);
  const list = document.getElementById(`dogs`);
  genres.map(async ({ name, id, icons: [icon], href }) => {
    const image = await getImages(token, id);
    const images = image_id
      .map(
        ({ name, external_urls: { dogs }, images: [image] }) => `
        <li>
          <a href="${dogs}" alt="${name}" target="_blank">
            <img src="${image_id.url}" width="180" height="180"/>
          </a>
        </li>`
      )
      .join(``);

    if (images) {
      const html = `
      <article class="dog-breed">
        <img src="${icon.url}" width="${icon.width}" height="${icon.height}" alt="${name}"/>
        <div>
          <h2>${name}</h2>
          <ol>
            ${images}
          </ol>
        </div>
      </article>`;

      list.insertAdjacentHTML("beforeend", html);
    }
  });
};

load();