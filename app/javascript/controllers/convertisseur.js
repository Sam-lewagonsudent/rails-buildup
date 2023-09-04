let points = document.getElementById("points");
let grCO2 = document.getElementById("grCO2");
let KgCO2 = document.getElementById("KgCO2");

points.addEventListener("input", function(){convPoids(this.id, this.value);});
grCO2.addEventListener("input", function(){convPoids(this.id, this.value);});
KgCO2.addEventListener("input", function(){convPoids(this.id, this.value);});

function convPoids(id, valeur){
    if(id == "points"){
      grCO2.value = valeur / 0.01;
      KgCO2.value = valeur / 10;
    }else if(id == "grCO2"){
      points.value = valeur * 0.01;
      KgCO2.value = valeur * 0.001;
    }else if(id == "KgCO2"){
      points.value = valeur * 10;
      grCO2.value = valeur * 1000;
    }
}
