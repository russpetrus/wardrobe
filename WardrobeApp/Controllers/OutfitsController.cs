using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WardrobeApp.Models;

namespace WardrobeApp.Controllers
{
    public class OutfitsController : Controller
    {
        private WardrobeProjectEntities db = new WardrobeProjectEntities();

        // GET: Outfits
        public ActionResult Index()
        {
            var outfits = db.Outfits.Include(o => o.Accessory).Include(o => o.Bottom).Include(o => o.Sho).Include(o => o.Top);
            return View(outfits.ToList());
        }

        // GET: Outfits/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Outfit outfit = db.Outfits.Find(id);
            if (outfit == null)
            {
                return HttpNotFound();
            }
            return View(outfit);
        }

        // GET: Outfits/Create
        public ActionResult Create()
        {
            ViewBag.OutfitAccessory = new SelectList(db.Accessories, "AccessoryID", "Name");
            ViewBag.OutfitBottom = new SelectList(db.Bottoms, "BottomID", "Name");
            ViewBag.OutfitShoes = new SelectList(db.Shoes, "ShoeID", "Name");
            ViewBag.OutfitTop = new SelectList(db.Tops, "TopID", "Name");
            return View();
        }

        // POST: Outfits/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "OutfitID,OutfitName,OutfitTop,OutfitBottom,OutfitShoes,OutfitAccessory")] Outfit outfit)
        {
            if (ModelState.IsValid)
            {
                db.Outfits.Add(outfit);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.OutfitAccessory = new SelectList(db.Accessories, "AccessoryID", "Name", outfit.OutfitAccessory);
            ViewBag.OutfitBottom = new SelectList(db.Bottoms, "BottomID", "Name", outfit.OutfitBottom);
            ViewBag.OutfitShoes = new SelectList(db.Shoes, "ShoeID", "Name", outfit.OutfitShoes);
            ViewBag.OutfitTop = new SelectList(db.Tops, "TopID", "Name", outfit.OutfitTop);
            return View(outfit);
        }

        // GET: Outfits/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Outfit outfit = db.Outfits.Find(id);
            if (outfit == null)
            {
                return HttpNotFound();
            }
            ViewBag.OutfitAccessory = new SelectList(db.Accessories, "AccessoryID", "Name", outfit.OutfitAccessory);
            ViewBag.OutfitBottom = new SelectList(db.Bottoms, "BottomID", "Name", outfit.OutfitBottom);
            ViewBag.OutfitShoes = new SelectList(db.Shoes, "ShoeID", "Name", outfit.OutfitShoes);
            ViewBag.OutfitTop = new SelectList(db.Tops, "TopID", "Name", outfit.OutfitTop);
            return View(outfit);
        }

        // POST: Outfits/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "OutfitID,OutfitName,OutfitTop,OutfitBottom,OutfitShoes,OutfitAccessory")] Outfit outfit)
        {
            if (ModelState.IsValid)
            {
                db.Entry(outfit).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.OutfitAccessory = new SelectList(db.Accessories, "AccessoryID", "Name", outfit.OutfitAccessory);
            ViewBag.OutfitBottom = new SelectList(db.Bottoms, "BottomID", "Name", outfit.OutfitBottom);
            ViewBag.OutfitShoes = new SelectList(db.Shoes, "ShoeID", "Name", outfit.OutfitShoes);
            ViewBag.OutfitTop = new SelectList(db.Tops, "TopID", "Name", outfit.OutfitTop);
            return View(outfit);
        }

        // GET: Outfits/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Outfit outfit = db.Outfits.Find(id);
            if (outfit == null)
            {
                return HttpNotFound();
            }
            return View(outfit);
        }

        // POST: Outfits/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Outfit outfit = db.Outfits.Find(id);
            db.Outfits.Remove(outfit);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
