using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace energy.App_Data
{
    partial class ReportManager
    {
        /// <summary>
        /// выбрать значения измерений по дате и ид прибора учета из вьюхи
        /// </summary>
        /// <param name="date"></param>
        /// <param name="meter_id"></param>
        /// <returns></returns>
        public IQueryable GetReport(DateTime date, int meter_id)
        {
            DataClassesEnergyDataContext db = new DataClassesEnergyDataContext();

            var results =
                from en in db.energy_report_view
                where en.value_dt > date && en.value_dt <= date.AddDays(1) && en.meter_id == meter_id
                orderby en.value_dt
                select en;

            if (results.Count() > 0)
            {
                return results;
            }
            else
            {
                return null;
            }
        }
    }
}