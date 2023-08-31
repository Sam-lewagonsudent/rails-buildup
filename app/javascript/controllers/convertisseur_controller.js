import { Controller } from "@hotwired/stimulus"

let grammes = document.getElementById("grammes");
let kilos = document.getElementById("kilos");
let livres = document.getElementById("livres");

grammes.addEventListener("input", function(){convPoids(this.id, this.value);});
kilos.addEventListener("input", function(){convPoids(this.id, this.value);});
livres.addEventListener("input", function(){convPoids(this.id, this.value);});

function convPoids(id, valeur){
    if(id == "grammes"){
        kilos.value = valeur / 1000;
        livres.value = valeur * 0.0022046;
    }else if(id == "kilos"){
        grammes.value = valeur * 1000;
        livres.value = valeur * 2.2046;
    }else if(id == "livres"){
        grammes.value = valeur /0.0022046;
        kilos.value = valeur / 2.2046;
    }
}
