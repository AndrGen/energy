using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace energy.App_Data
{
    partial class ParametersManager
    {
        /// <summary>
        /// получить все столбцы отчета, как строки из таблицы параметров
        /// </summary>
        /// <returns></returns>
        public IQueryable GetParameters()
        {
            DataClassesEnergyDataContext db = new DataClassesEnergyDataContext();

            var results =
                from p in db.parameters
                select p;

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