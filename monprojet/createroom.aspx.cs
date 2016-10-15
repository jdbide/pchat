using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace monprojet
{
    public partial class createroom : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Page.Header.DataBind();
                //ScriptManager1.RegisterAsyncPostBackControl(plus);
                // ScriptManager1.RegisterAsyncPostBackControl(moins);
                
               
                uid.Visible = false;
                uidlabel_.Visible = false;

                addbutton.Visible = false;
                moins.Visible = false;
                //Listbox bug fix
                ListBox1.AutoPostBack = true;
                ListBox1.EnableViewState = true;

                username.Text = "BIDE Jean-Daniel";

                //date Listboxes
                populatelists();
            }


        }

        public void moins_Click(object sender, EventArgs e)
        {
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                List<String> list = getMembersInListBox();
                System.Diagnostics.Debug.WriteLine(ListBox1.SelectedIndex);
               
                    int index = ListBox1.SelectedIndex;
                    list.RemoveAt(index);
                    updateMembersInListBox(list);

                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('User removed!')", true);
            }
            else
            {
                //this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You clicked NO!')", true);
            }
        }

        private void populateListBoxMembers()
        {
            List<string> MyList = new List<string>();
            //MyList.Add("User User1");
            //MyList.Add("User User2");
            updateMembersInListBox(MyList);
        }

        private void addmember(String uid)
        {
            List<String> list = getMembersInListBox();
            list.Add("User " + uid);
            updateMembersInListBox(list);
        }


        protected void populatelists()
        {

            if (!IsPostBack)
            {
                //Members listbox
                populateListBoxMembers();
                
                if (this.SelectedDate == DateTime.MinValue)
                {
                    this.PopulateYear();
                    this.PopulateMonth();
                    this.PopulateDay();
                }
            }
            else
            {
                if (Request.Form[ddlDay.UniqueID] != null)
                {
                    this.PopulateDay();
                    ddlDay.ClearSelection();
                    ddlDay.Items.FindByValue(Request.Form[ddlDay.UniqueID]).Selected = true;
                }
            }
        }


        private void PopulateDay()
        {
            ddlDay.Items.Clear();
            ListItem lt = new ListItem();
            lt.Text = "DD";
            lt.Value = "0";
            ddlDay.Items.Add(lt);
            int days = DateTime.DaysInMonth(this.Year, this.Month);
            for (int i = 1; i <= days; i++)
            {
                lt = new ListItem();
                lt.Text = i.ToString();
                lt.Value = i.ToString();
                ddlDay.Items.Add(lt);
            }
            ddlDay.Items.FindByValue(DateTime.Now.Day.ToString()).Selected = true;
        }

        private void PopulateMonth()
        {
            ddlMonth.Items.Clear();
            ListItem lt = new ListItem();
            lt.Text = "MM";
            lt.Value = "0";
            ddlMonth.Items.Add(lt);
            for (int i = 1; i <= 12; i++)
            {
                lt = new ListItem();
                lt.Text = CultureInfo.InvariantCulture.DateTimeFormat.MonthNames[i - 1];
                lt.Value = i.ToString();
                ddlMonth.Items.Add(lt);
            }
            ddlMonth.Items.FindByValue(DateTime.Now.Month.ToString()).Selected = true;
        }

        private void PopulateYear()
        {
            ddlYear.Items.Clear();
            ListItem lt = new ListItem();
            lt.Text = "YYYY";
            lt.Value = "0";
            ddlYear.Items.Add(lt);
            for (int i = DateTime.Now.Year; i <= DateTime.Now.Year + 5; i++)
            {
                lt = new ListItem();
                lt.Text = i.ToString();
                lt.Value = i.ToString();
                ddlYear.Items.Add(lt);
            }
            ddlYear.Items.FindByValue(DateTime.Now.Year.ToString()).Selected = true;
        }

        private int Day
        {
            get
            {
                if (Request.Form[ddlDay.UniqueID] != null)
                {
                    return int.Parse(Request.Form[ddlDay.UniqueID]);
                }
                else
                {
                    return int.Parse(ddlDay.SelectedItem.Value);
                }
            }
            set
            {
                this.PopulateDay();
                ddlDay.ClearSelection();
                ddlDay.Items.FindByValue(value.ToString()).Selected = true;
            }
        }
        private int Month
        {
            get
            {
                return int.Parse(ddlMonth.SelectedItem.Value);
            }
            set
            {
                this.PopulateMonth();
                ddlMonth.ClearSelection();
                ddlMonth.Items.FindByValue(value.ToString()).Selected = true;
            }
        }
        private int Year
        {
            get
            {
                return int.Parse(ddlYear.SelectedItem.Value);
            }
            set
            {
                this.PopulateYear();
                ddlYear.ClearSelection();
                ddlYear.Items.FindByValue(value.ToString()).Selected = true;
            }
        }

        public DateTime SelectedDate
        {
            get
            {
                try
                {
                    return DateTime.Parse(this.Month + "/" + this.Day + "/" + this.Year);
                }
                catch
                {
                    return DateTime.MinValue;
                }
            }
            set
            {
                if (!value.Equals(DateTime.MinValue))
                {
                    this.Year = value.Year;
                    this.Month = value.Month;
                    this.Day = value.Day;
                }
            }
        }

        protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            populatelists();
        }

        protected void plus_Click(object sender, ImageClickEventArgs e)
        {
            moins.Visible = false;
            uid.Visible = true;
            uidlabel_.Visible = true;
            addbutton.Visible = true;
        }



        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void addbutton_Click(object sender, EventArgs e)
        {
            addmember(uid.Text);
        }

        private List<String> getMembersInListBox()
        {
            List<String> list = new List<String>();
            foreach (ListItem item in ListBox1.Items)
            {
                list.Add(item.ToString());
            }
            return list;
        }

        private void updateMembersInListBox(List<String> list)
        {
            ListBox1.DataSource = list;
            ListBox1.DataBind();
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            moins.Visible = true;
            uid.Visible = false;
            uidlabel_.Visible = false;
            addbutton.Visible = false;
        }


    }
}