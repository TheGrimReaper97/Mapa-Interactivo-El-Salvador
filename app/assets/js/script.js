function switchSheet() {
    let theme = document.getElementById("theme");
  
    if (theme.getAttribute("href") == "app/assets/css/light-mode.css") {
      console.log('modo oscuro')
      theme.href = "app/assets/css/dark-mode.css";
    } else {
      console.log('modo claro')
      theme.href = "app/assets/css/light-mode.css";
    }
  }
  function switchSheet1() {
    let theme = document.getElementById("theme");
  
    if (theme.getAttribute("href") == "app/assets/css/light-mode.css") {
      console.log('modo oscuro')
      theme.href = "app/assets/css/dark-mode.css";
    } else {
      console.log('modo claro')
      theme.href = "app/assets/css/light-mode.css";
    }
  }

  // Obteniendo Posiciones
  var modal = document.getElementById("myModal");
  var modalImg = document.getElementById("img01");
  var captionText = document.getElementById("caption"); 

//Esta funcion hace uso de su parametro para obtener toda la informacion de la imagen
function ImagenModal(Funcion) {
  modal.style.display = "block";
  modalImg.src = Funcion.src;
  captionText.innerHTML = Funcion.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
if(span !== undefined)
{
  span.onclick = function() {
    modal.style.display = "none";
  }
}

//Variable donde se almacenara los datos del departamento
let dataDepar = {};

//Obtener la variable del URL de la pagina
var queryString = window.location.search;
var urlParams = new URLSearchParams(queryString);
var departamento = urlParams.get('nombre');


if( window.location.pathname.indexOf('departamento.php') !== -1)
{
  if(departamento !== null )
  {
    //Consumir API
    const baseURL = "http://localhost/mapainteractivo/app/controllers/departamentos_controller.php";

    fetch(`${baseURL}?nombre=${departamento}`)
      .then( res => res.json())
      .then( data => {
        if(data !== 'error')
        {
          dataDepar = data;
          fetch( `${baseURL}?id=${dataDepar[0].id_departamento}`)
            .then( res => res.json())
            .then( data => {
              dataDepar[0] = {
                ...dataDepar[0],
                municipios: data
              }
              
              llenarDatos(dataDepar[0])
            })
        }
        else
        {
          location.href = 'index.php';
        }
        
      })
      .catch(err => console.log(err))
  }
  else
  {
    location.href = 'index.php';
  }
}


function llenarDatos(data)
{
  //Destructuring
  var { nombre_depa, info_general, historia, municipios, turistico } = data;

  //Se obtienen los elementos
  const nombreElement = document.getElementById('nombre-depar');
  const informacionElement = document.getElementById('informacion');
  const historiaElement = document.getElementById('historia');
  const municipioElement = document.getElementById('municipios');
  const imgDeparElement = document.getElementById('imgDepar');
  const turisticoElement = document.getElementById('turistico');
  const indicators = document.querySelector('.carousel-indicators');

  //Se le agrega la informacion a los elementos
  nombreElement.innerText = nombre_depa;
  informacionElement.innerText = info_general;
  historiaElement.innerText = historia;
  imgDeparElement.src = `app/assets/img/departamentos/${nombre_depa}/${nombre_depa}.png`;

  //Se recorre el array de los municipios
  municipios.forEach( municipio => {
    var a = document.createElement('a');
    a.classList = 'list-group-item active';
    a.innerText = municipio.nombre_muni;
    municipioElement.appendChild(a);
  });

  var turisticosArray = turistico.split(','); //Se hace un Array separando el texto por comas de los lugares turistico

  //Se recorre el array de los lugares turisticos
  turisticosArray.forEach( (turis, index) => {

    turis = turis.trim(); //Se eliminan los espacios en los textos con la funcion TRIM() 

    //Se Agregan los indicadores e imagenes en el carusel segun el tamaño del array de los lugares turisticos
    if(index === 0)
    {
      indicators.innerHTML += `<li data-target="#Carrusel" data-slide-to="${index}" class="active"></li>`;
      turisticoElement.innerHTML +=
      '<div class="carousel-item active">'+
          `<img class="d-block w-100" onclick="ImagenModal(this)" id="myImg" src="app/assets/img/departamentos/${nombre_depa}/${turis}.jpg" alt="Los Ausoles">`+
          '<div class="carousel-caption d-none d-md-block">'+
              `<h5>${turis}</h5>`+
          '</div>'+
      '</div>';
    }
    else
    {
      indicators.innerHTML += `<li data-target="#Carrusel" data-slide-to="${index}"></li>`
      turisticoElement.innerHTML +=
      '<div class="carousel-item">'+
          `<img class="d-block w-100" onclick="ImagenModal(this)" id="myImg" src="app/assets/img/departamentos/${nombre_depa}/${turis}.jpg" alt="Los Ausoles">`+
          '<div class="carousel-caption d-none d-md-block">'+
              `<h5>${turis}</h5>`+
          '</div>'+
      '</div>';
    }
  })
}

