var login = document.getElementById("logowanie");
var rejestracja = document.getElementById("rejestracja");

document.getElementById("log").addEventListener("click", function () {
    rejestracja.classList.add("hide");
    login.classList.remove("hide");
});

document.getElementById("rej").addEventListener("click", function () {
    rejestracja.classList.remove("hide");
    login.classList.add("hide");
});

document.getElementById("registerbtn").addEventListener("click", function () {
    
});

document.getElementById("loginbtn").addEventListener("click", function () {

});