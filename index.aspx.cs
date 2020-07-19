using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    int saniye = 59;
    int dakika = 24;
    int mola = 4;
    string status = "work";
    string sound = "beep.wav";
    int soundcontrol;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblsn.Text = saniye.ToString();
            lbldk.Text = dakika.ToString();
            lblstatus.Text = status;
            btnpause.Visible = false;
        }
    }

    protected void btnstart_Click(object sender, EventArgs e)
    {
		if(Timer1.Enabled == false)
		{
			Timer1.Enabled = true;
            btnstart.Visible = false;
            btnpause.Visible = true;
		}
    }
    protected void btnpause_Click(object sender, EventArgs e)
    {
        if(Timer1.Enabled == true)
		{
			Timer1.Enabled = false;
            btnstart.Visible = true;
            btnpause.Visible = false;
        }
    }
    protected void btnrestart_Click(object sender, EventArgs e)
    {
        lblsn.Text = saniye.ToString();
        lbldk.Text = dakika.ToString();
        Timer1.Enabled = false;
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        audioTag.Src = "";
        int a = Convert.ToInt32(lblsn.Text);
        a = a - 1;
        lblsn.Text = a.ToString();
        if (Convert.ToInt32(lblsn.Text) == 0)
        {
            int b = Convert.ToInt32(lbldk.Text);
            b = b - 1;
            lbldk.Text = b.ToString();
            lblsn.Text = saniye.ToString();
            if (Convert.ToInt32(lbldk.Text) == -1 && lblstatus.Text == "work")//molaya girer
            {
                lblsn.Text = saniye.ToString();
                lbldk.Text = mola.ToString();
                lblstatus.Text = "relax";
                stcontent1.Attributes["style"] = "background-color:#07C584";
                audioTag.Src = sound;
            }
            else if (Convert.ToInt32(lbldk.Text) == -1 && lblstatus.Text == "relax")//çalışmaya girer
            {
                lblsn.Text = saniye.ToString();
                lbldk.Text = dakika.ToString();
                lblstatus.Text = "work";
                stcontent1.Attributes["style"] = "background-color:#C50727";
                audioTag.Src = sound;

            }
        }
     }
}