<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>
<%@ Register TagPrefix="My" TagName="EventUserControl" Src="~/EventUserControl.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <My:EventUserControl runat="server" ID="MyEventUserControl" OnPageTitleUpdated="MyEventUserControl_PageTitleUpdated" />

    </div>
      <div>
        Your name:<br />
      <asp:TextBox runat="server" id="txtName" />
    <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="txtName" errormessage="Please enter your name!" />
    <br /><br />
     <asp:Button runat="server" id="btnSubmitForm" text="Ok" onclick="btnSubmitForm_Click" />
       </div>

            Small PSG number:<br />
<asp:TextBox runat="server" id="txtSmallNumber" /><br /><br />
Big number:<br />
<asp:TextBox runat="server" id="txtBigNumber" /><br />
<asp:CompareValidator runat="server" id="cmpNumbers" controltovalidate="txtSmallNumber" controltocompare="txtBigNumber" operator="LessThan" type="Integer" errormessage="The first number should be smaller than the second number!" /><br />
    
      Date:<br />
<asp:TextBox runat="server" id="txtDate" />
<asp:RangeValidator runat="server" id="rngDate" controltovalidate="txtDate" type="Date" minimumvalue="01-01-2006" maximumvalue="31-12-2006" errormessage="Please enter a valid date within 2006!" />
<br /><br />

        4 digit number:<br />
<asp:TextBox runat="server" id="txtNumber" Height="28px" Width="130px" />
<asp:RegularExpressionValidator runat="server" id="rexNumber" controltovalidate="txtNumber" validationexpression="^[0-9]{4}$" errormessage="Please enter a 4 digit number!" />
<br /><br />

            Custom text:<br />
<asp:TextBox runat="server" id="txtCustom" />
<asp:CustomValidator runat="server" id="cusCustom" controltovalidate="txtCustom" onservervalidate="cusCustom_ServerValidate" errormessage="The text must be exactly 8 characters long!" />
<br /><br />
    </form>

      </body>
</html>
