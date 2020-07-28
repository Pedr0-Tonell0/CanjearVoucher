
function SoloInt(e) {
    var key = window.Event ? e.which : e.keyCode
    return (key >= 48 && key <= 57)
}

function SoloString(e) {
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toLowerCase();
    letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
    especiales = "8-37-39-46";
    tecla_especial = false
    for (var i in especiales) {
        if (key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }
    if (letras.indexOf(tecla) == -1 && !tecla_especial) {
        return false;
    }
}
function ValidarDNI() {
    objeto = document.getElementById("DNI");
    Validar = document.getElementById("Buscar");
    valueForm = objeto.value;
    if (valueForm.length < 8) {
        objeto.className = "form-control border border-danger";
        objeto.style.boxShadow = "0 0 0 0.2rem rgba(255, 0, 0, 0.23)";
        Validar.disabled = true;
    }
    else {
        objeto.className = "form-control border border-success";
        objeto.style.boxShadow = "0 0 0 0.2rem rgba(79, 162, 51, 0.25)";
        Validar.disabled = false;
    }
}
function ValidarVacio(text) {
    objeto = document.getElementById(text);
    valueForm = objeto.value;
    if (valueForm != "" && valueForm.length >= 3) {
        objeto.className = "form-control border border-success";
        objeto.style.boxShadow = "0 0 0 0.2rem rgba(79, 162, 51, 0.25)";
    }
    else {
        objeto.className = "form-control border border-danger";
        objeto.style.boxShadow = "0 0 0 0.2rem rgba(255, 0, 0, 0.23)";
    }
}
function ValidarEmail() {
    objeto = document.getElementById("Email");
    valueForm = objeto.value;
    var patron = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
    if (valueForm.search(patron) == 0) {
        objeto.className = "form-control border border-success";
        objeto.style.boxShadow = "0 0 0 0.2rem rgba(79, 162, 51, 0.25)";
    } else {
        objeto.className = "form-control border border-danger";
        objeto.style.boxShadow = "0 0 0 0.2rem rgba(255, 0, 0, 0.23)";
    }
}



