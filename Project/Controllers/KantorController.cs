using Project.Models;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;

namespace Logowanie.Controllers
{
    public class KantorController : Controller
    {
        private readonly HttpClient _httpClient;

        public KantorController(HttpClient httpClient)
        {
            _httpClient = httpClient;
        }
        public IActionResult Kantor()
        {
            return View();
        }
    }
}
