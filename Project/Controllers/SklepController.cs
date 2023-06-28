using Microsoft.AspNetCore.Mvc;
using Project.Models;

namespace Project.Controllers
{
    public class SklepController : Controller
    {
        public IConfiguration Configuration { get; }
        public SklepController(IConfiguration config)
        {
            Configuration = config;
        }
        List<Item> list = new List<Item>();
        public IActionResult Privacy()
        {
            return View();
        }
        public IActionResult SklepGlowna()
        {
            fetchdata();
            return View(list);
        }

        [Route("/Sklep/Reset")]
        public ActionResult Restart()
        {
            fetchdata();
            return PartialView("_ItemsPartial", list);
        }

        [Route("/Sklep/ItemSearch/name={name}")]
        public ActionResult ItemSearch(string name)
        {
            itemsearchfetch(name);
            return PartialView("_ItemsPartial",list);
        }

        [Route("/Sklep/CategorySearch/cat={category}")]
        public ActionResult CategorySearch(string category)
        {
            categorysearchfetch(category);
            return PartialView("_ItemsPartial", list);
        }

        [Route("/Sklep/ColorSearch/color={color}")]
        public ActionResult ColorSearch(string color)
        {
            colorsearchfetch(color);
            return PartialView("_ItemsPartial", list);
        }

        [Route("/Sklep/GenderSearch/gender={gender}")]
        public ActionResult GenderSearch(string gender)
        {
            gendersearchfetch(gender);
            return PartialView("_ItemsPartial", list);
        }

        [Route("/Sklep/ValueSearch/min={min}/max={max}")]
        public ActionResult ValueSearch(double min, double max)
        {
            valuesearchfetch(min, max);
            return PartialView("_ItemsPartial", list);
        }

        [Route("/Sklep/{name}")]
        public IActionResult OpenItem(string name)
        {
            openitemfetch(name);
            return View("OpenItem", list);
        }

        private void fetchdata()
        {
            var connectionString = Configuration.GetConnectionString("DefaultConnection") ?? throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");
            using var SklepContext = new SklepContext(connectionString);

            list = SklepContext.SklepItems.ToList();
        }

        private void itemsearchfetch(string name)
        {
            var connectionString = Configuration.GetConnectionString("DefaultConnection") ?? throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");
            using var SklepContext = new SklepContext(connectionString);
            name = name.Replace("_", " ");

            list = SklepContext.SklepItems.Where(x => x.Item_Name.Contains(name)).ToList();
        }

        private void categorysearchfetch(string category)
        {
            var connectionString = Configuration.GetConnectionString("DefaultConnection") ?? throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");
            using var SklepContext = new SklepContext(connectionString);

            list = SklepContext.SklepItems.Where(x => x.Item_Category.Contains(category)).ToList();
        }

        private void colorsearchfetch(string color)
        {
            var connectionString = Configuration.GetConnectionString("DefaultConnection") ?? throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");
            using var SklepContext = new SklepContext(connectionString);

            list = SklepContext.SklepItems.Where(x => x.Item_Color.Contains(color)).ToList();
        }

        private void gendersearchfetch(string gender)
        {
            var connectionString = Configuration.GetConnectionString("DefaultConnection") ?? throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");
            using var SklepContext = new SklepContext(connectionString);

            list = SklepContext.SklepItems.Where(x => x.Item_Gender.Contains(gender)).ToList();
        }

        private void valuesearchfetch(double min, double max)
        {
            var connectionString = Configuration.GetConnectionString("DefaultConnection") ?? throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");
            using var SklepContext = new SklepContext(connectionString);

            list = SklepContext.SklepItems.Where(x => x.Item_Price < max && x.Item_Price > min).ToList();
        }

        private void openitemfetch(string name)
        {
            var connectionString = Configuration.GetConnectionString("DefaultConnection") ?? throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");
            using var SklepContext = new SklepContext(connectionString);

            name = name.Replace("_", " ");

            list = SklepContext.SklepItems.Where(x => x.Item_Name == name).ToList();
        }
    }
}
