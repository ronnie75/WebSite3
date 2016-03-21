using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void MyEventUserControl_PageTitleUpdated(object sender, EventArgs e)
    {
        this.Title = MyEventUserControl.PageTitle;
    }

    protected void btnSubmitForm_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            btnSubmitForm.Text = "My form is valid!";
        }
    }

    protected void cusCustom_ServerValidate(object sender, ServerValidateEventArgs e)
    {
        if (e.Value.Length == 8)
            e.IsValid = true;
        else
            e.IsValid = false;
    }

}