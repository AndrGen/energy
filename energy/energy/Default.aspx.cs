using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using energy.Models;
using System.ComponentModel;
using System.Data;


namespace energy
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DropDownListMeters_SelectedIndexChanged(object sender, EventArgs e)
        {
            StartReport();   
        }

        void StartReport()
        {
            try
            {
                EnergyReport er = new EnergyReport();
                DataSet ds = er.CreateReport(CalendarEnergyDate.SelectedDate, DropDownListMeters.SelectedIndex + 1);
                if (ds.Tables.Count > 0)
                {
                    GridViewEnergyReport.DataSource = ds;
                    GridViewEnergyReport.DataBind();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message + "\n" + ex.StackTrace);
            }
        }

        protected void CalendarEnergyDate_SelectionChanged(object sender, EventArgs e)
        {
            StartReport();
        }
    }
}