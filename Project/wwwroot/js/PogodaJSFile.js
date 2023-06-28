document.getElementById("input_city").addEventListener("keypress", function (event) {
    var city = this.value;
    if (event.keyCode === 13 && city != "") {
        var url = '/Pogoda/Pogoda/city=' + city;
        window.location.href = url;
    }
    else {
        console.log("Something went wrong");
    }
});

function disableScroll() {
    window.classList.add("stop-scrolling");
}

function enableScroll() {
    window.classList.remove("stop-scrolling");
}

window.onscroll = function (event)
{
    if (document.getElementById("main-container").className === "main-container")
    {
        document.getElementById("main-container").classList.add("hide");
        document.getElementById("second-container").classList.remove("hide");
        window.classList.add("stop-scrolling");
    }
    /*else if (document.getElementById("second-container").className === "second-container")
    {
        document.getElementById("main-container").classList.remove("hide");
        document.getElementById("second-container").classList.add("hide");
        window.classList.add("stop-scrolling");
    }*/
};