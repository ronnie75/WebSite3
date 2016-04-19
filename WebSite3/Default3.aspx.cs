﻿using System;
using System.Data;
using System.Web;
using System.Diagnostics;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (ViewState["NameOfUser"] != null)
            NameLabel.Text = ViewState["NameOfUser"].ToString();
        else
            NameLabel.Text = "Not set yet...";

        Trace.Write("mon test de debug");
    }
            
    
protected void SubmitForm_Click(object sender, EventArgs e)
    {
        ViewState["NameOfUser"] = NameField.Text;
        NameLabel.Text = NameField.Text;
    }
}