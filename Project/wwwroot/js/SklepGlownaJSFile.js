var min_slider = document.getElementById("min_slider");
var max_slider = document.getElementById("max_slider");
var min_number = document.getElementById("min_number");
var max_number = document.getElementById("max_number");
var colorFilter = document.getElementsByClassName("color");
var genderSelect = document.getElementById("genderSelect");
var filtrbtn = document.getElementById("filtrbtn");
var searchbtn = document.getElementById("search");
var inputsearch = document.getElementById("inputsearch");
var catli = document.getElementById("catli");

/* search bar */
function search() {
    var name = this.value;
    name = name.replace(" ", "_");
    $('#items_box').load('/Sklep/ItemSearch/name=' + name);
};

searchbtn.addEventListener("click", function () {
    if (inputsearch.value != "") {
        search();
    }
});

inputsearch.addEventListener("keydown", function (e) {
    if (e.keyCode == 13 && inputsearch.value != "") {
        search();
    }
});

/* Kontrola Sliderów i inputó∑ zakresy */

min_slider.addEventListener("change", function () {
    if (this.value > max_slider.value) {
        this.value = max_slider.value;
    }
    min_number.value = min_slider.value;
});

max_slider.addEventListener("change", function () {
    if (this.value < min_slider.value) {
        this.value = min_slider.value;
    }
    max_number.value = max_slider.value;
});

min_number.addEventListener("keydown", function (e) {
    if (e.keyCode == 13) {
        if (min_number.value < max_number.value) {
            min_slider.value = min_number.value;
        }
    }
});

max_number.addEventListener("keydown", function (e) {
    if (e.keyCode == 13) {
        if (min_number.value < max_number.value) {
            min_slider.value = min_number.value;
        }
    }
});

filtrbtn.addEventListener("click", function () {
    $('#items_box').load('/Sklep/ValueSearch/min=' + min_number.value + '/max=' + max_number.value);
});

/* Gender */

genderSelect.addEventListener("change", function () {
    var gender = this.value;
    $('#items_box').load('/Sklep/GenderSearch/gender=' + gender);
});

/* Categorie */

$('#categories li').click(function () {
    var name = this.innerHTML;
    console.log(name);
    $('#items_box').load('/Sklep/CategorySearch/cat=' + name);
});

/* Reset */

$('#resetbtn').click(function () {
    $('#items_box').load('/Sklep/Reset');
});

/* Colors */

$('#colorul li').click(function () {
    var color = this.style.backgroundColor.toString();
    $('#items_box').load('/Sklep/ColorSearch/color=' + color);
});

/* Sprawdz checkboxy i filtruj */

function check() {

}

/* Podstrona */
    $('#items_box #podstrona #name').click(function () {
        var name = this.innerHTML;
        name = name.replace(" ", "_");
        console.log(name);
        $(window.location).prop('href', '/Sklep/' + name)
    });
