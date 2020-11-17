using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using energy.App_Data;
using System.Data;
using System.ComponentModel;

namespace energy.Models
{
    public class EnergyReport
    {
        /// <summary>
        /// создание датасета для отчета. Сначала добавляются колонки из таблицы parameters, потом добавляются данные из вьюхи
        /// </summary>
        /// <param name="date"></param>
        /// <param name="meter_id"></param>
        /// <returns></returns>
        public DataSet CreateReport(DateTime date, int meter_id)
        {
            DataSet dsReport = null;
            ParametersManager pm = null;
            ReportManager rm = null;
            try
            {
                dsReport = new DataSet();
                pm = new ParametersManager();
                rm = new ReportManager(); 
                dsReport.Tables.Add("report");
                dsReport.Tables["report"].Columns.Add("Время", typeof(string));

                //колонки
                var m_values = pm.GetParameters();
                if (m_values != null)
                {
                    foreach (parameters val in m_values)
                    {
                        dsReport.Tables["report"].Columns.Add(val.caption + " ," + val.measure_units, typeof(double));
                    }
                }

                //данные
                IQueryable rep_values = null;
                if (date != DateTime.MinValue)
                {
                    rep_values = rm.GetReport(date, meter_id);
                    if (rep_values != null)
                    {
                        foreach (energy_report_view val in rep_values)
                        {
                            DataRow dr = dsReport.Tables[0].NewRow();

                            dr["Время"] = val.time_diff;

                            dr[1] = val.act_in ?? 0.0;
                            dr[2] = val.act_out ?? 0.0;
                            dr[3] = val.react_in ?? 0.0;
                            dr[4] = val.react_ot ?? 0.0;

                            dsReport.Tables[0].Rows.Add(dr);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message + "\n" + ex.StackTrace);
            }
            return dsReport;

        }

    }
}