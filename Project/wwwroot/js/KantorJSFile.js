var userLang = navigator.language || navigator.userLanguage;
userLang = userLang.slice(3);
var value = document.getElementById("value");
var from = document.getElementById("from");
var to = document.getElementById("to");
var resultview = document.getElementById("result");
var rate;

window.addEventListener("load", (event) => {
    switch (userLang) {
        case "PL": from[0].selected = true; break;
        case "DE": from[1].selected = true; break;
        case "US": from[2].selected = true; break;
    }
    
    switch (userLang) {
        case "PL": to[0].disabled = true; to[1].selected = true; break;
        case "DE": to[1].disabled = true; to[2].selected = true; break;
        case "US": to[2].disabled = true; to[0].selected = true; break;
    }

    data();
});

function data() {
    value.disabled = true;
    var myHeaders = new Headers();
    myHeaders.append("apikey", "2LbI4Yl6QRhZ0udfdBEv9HC6pnv6fc0L");

    var requestOptions = {
        method: 'GET',
        redirect: 'follow',
        headers: myHeaders
    };
    
    fetch("https://api.apilayer.com/fixer/convert?to=" + to.value + "&from=" + from.value + "&amount=1", requestOptions)
        .then(response => response.text())
        .then(result => {
            console.log(result);
            var obj = JSON.parse(result);
            rate = obj.info.rate;
            console.log(obj.info.rate);
            value.disabled = false;})
        .catch(error => console.log('error', error));
}

value.addEventListener("keyup", function () {
    resultview.value = (value.value * rate).toFixed(2);
});

from.addEventListener("change", function () {
    switch (from.value) {
        case "PLN": to[0].disabled = true; to[1].disabled = false; to[2].disabled = false; break;
        case "EUR": to[1].disabled = true; to[0].disabled = false; to[2].disabled = false; break;
        case "USD": to[2].disabled = true; to[0].disabled = false; to[1].disabled = false; break;
    }
    if (from.value == to.value) {
        rate = 1;
    }
    else {
        data();
    }
});

to.addEventListener("change", function () {
    switch (to.value) {
        case "PLN": from[0].disabled = true; break;
        case "EUR": from[1].disabled = true; break;
        case "USD": from[2].disabled = true; break;
    }
    data();
});