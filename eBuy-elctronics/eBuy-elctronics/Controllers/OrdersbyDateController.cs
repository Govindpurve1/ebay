﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using eBuy_elctronics_DB;

namespace eBuy_elctronics.Controllers
{
    public class OrdersbyDateController : Controller
    {
        #region EF Ref
        Entities DB = new Entities();
        #endregion

        #region Check with all order by date
        /// <summary>
        /// Get total orders and ordered dates
        /// </summary>
        public ActionResult Index()
        {
            try
            {
                if (Session["user"] != null)
                {
                    Logindetail user=Session["user"] as Logindetail;
                    IList<TotalOrder> totalOrdes = DB.TotalOrders.Where(x => x.IsDeleted == false && x.IsActive == true && x.LoginID == user.Loginid).ToList();
                    return View(totalOrdes);
                }
                else
                {
                    ViewBag.ErrorEx = "Session is expired.";
                    return View("Error");
                }
            }
            catch (Exception ex)
            {
                ViewBag.ErrorEx = ex.Message;
                return View("Index");
            }
        }
        #endregion
    }
}
