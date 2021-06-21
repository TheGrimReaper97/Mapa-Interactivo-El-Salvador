function switchSheet() {
    let theme = document.getElementById("theme");
  
    if (theme.getAttribute("href") == "css/light-mode.css") {
      console.log('modo oscuro')
      theme.href = "css/dark-mode.css";
    } else {
      console.log('modo claro')
      theme.href = "css/light-mode.css";
    }
  }
  function switchSheet1() {
    let theme = document.getElementById("theme");
  
    if (theme.getAttribute("href") == "../css/light-mode.css") {
      console.log('modo oscuro')
      theme.href = "../css/dark-mode.css";
    } else {
      console.log('modo claro')
      theme.href = "../css/light-mode.css";
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
span.onclick = function() {
  modal.style.display = "none";
}