using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HelloWorldLabel.Text = "Hello, !" +TextInput.Text;
             
      
        UserInfoBoxControl userInfoBoxControl = (UserInfoBoxControl)LoadControl("~/UserInfoBoxControl.ascx");
        userInfoBoxControl.UserName = "John Doe";
        userInfoBoxControl.UserAge = 78;
        userInfoBoxControl.UserCountry = "Spain";
        phUserInfoBox.Controls.Add(userInfoBoxControl);

    }


    protected void GreetButton_Click(object sender, EventArgs e)
    {

    }
    protected void GreetList_SelectedIndexChanged(object sender, EventArgs e)
    {
        HelloWorldLabel.Text = "Hello, " + GreetList.SelectedValue;
    }
}