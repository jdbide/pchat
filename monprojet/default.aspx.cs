using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Management.Automation;





namespace monprojet
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
   
        }




        public void updateList()
        {
            PowerShell ps = PowerShell.Create();
            ps.AddScript("Get-ChildItem D:\\");

            List<String> liste = new List<string>();
            Collection<PSObject> PSOutput = ps.Invoke();

            // loop through each output object item
            foreach (PSObject outputItem in PSOutput)
            {
                // if null object was dumped to the pipeline during the script then a null
                // object may be present here. check for null to prevent potential NRE.
                if (outputItem != null)
                {
                    System.Diagnostics.Debug.WriteLine(outputItem);
                    liste.Add(outputItem.ToString());
                }

            }

            ListBox1.DataSource = liste;
            ListBox1.DataBind();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            updateList();
        }

    }
}