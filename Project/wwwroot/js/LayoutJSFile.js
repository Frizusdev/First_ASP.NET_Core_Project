function getlocation() {
    if ('geolocation' in navigator) {
        navigator.geolocation.getCurrentPosition(position => {
            let lat = position.coords.latitude;
            let lon = position.coords.longitude;
            console.log(lat, "| ", lon);
            var url = '/Pogoda/Pogoda/x=' + lat + '&y=' + lon;
            window.location.href = url;
        }, error => {
            console.log(error.code);
        });
    }
    else {
        console.log("Geolocation not suported");
    }
}
