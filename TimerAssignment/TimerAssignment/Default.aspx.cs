using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TimerAssignment
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Text = DateTime.Now.ToString();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
           //Label1.Text=DateTime.Now.ToString();
        }

        protected void Timer2_Tick(object sender, EventArgs e)
        {
           //Label2.Text = DateTime.Now.ToString();
        }

        protected void Timer3_Tick(object sender, EventArgs e)
        {
            Label3.Text = DateTime.Now.ToString();
        }
        protected void Timer4_Tick(object sender, EventArgs e)
        {
            Label4.Text = DateTime.Now.ToString();
        }
        protected void Timer5_Tick(object sender, EventArgs e)
        {
            Label5.Text = DateTime.Now.ToString();
        }

        protected void globalTimer_Tick(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString();
            if (DateTime.Now.Second%2 == 0)
            {
                Label2.Text = DateTime.Now.ToString();
            }
        }
    }
}