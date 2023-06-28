using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Collections.Generic;
using System.Diagnostics.Metrics;
using System.Net;
using Project.Models;

namespace Project.Controllers
{
    public class PogodaController : Controller
    {
        private readonly HttpClient _httpClient;

        public PogodaController(HttpClient httpClient)
        {
            _httpClient = httpClient;
        }

        [Route("/Pogoda/Pogoda/x={x}&y={y}")]
        public IActionResult Pogoda([FromRoute] string x, [FromRoute] string y)
        {
            if (x != null && y != null)
            {
                var appikey = "2e98c4854b6af7f91f625e1298974836";
                var url = $"https://api.openweathermap.org/data/2.5/forecast?lat=" + x + "&lon=" + y + "&units=metric&lang=pl&appid=" + appikey + "";
                var web = new WebClient();
                var response = web.DownloadString(url);
                ApiResponseCoords.Root root = JsonConvert.DeserializeObject<Models.ApiResponseCoords.Root>(response);
                return View(root);
            }
            else return View();
        }

        [Route("~/Pogoda/Pogoda/city={city}")]
        public IActionResult Pogoda([FromRoute] string city)
        {
            var appikey = "2e98c4854b6af7f91f625e1298974836";
            var url = $"http://api.openweathermap.org/data/2.5/weather?q="+city+ "&units=metric&lang=pl&cnt=1&APPID=" + appikey+"";
            var web = new WebClient();
            var response = web.DownloadString(url);
            WeatherApiResponse.Root myDeserializedClass = JsonConvert.DeserializeObject<WeatherApiResponse.Root>(response);
            return View("Index",myDeserializedClass);
        }
    }
}
