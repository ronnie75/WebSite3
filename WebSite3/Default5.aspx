<%@ Page Language="C#" Culture="fr-FR" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CultureInfo tesxfzt demo</title>
</head>
<body>
    <form id="MainForm" runat="server">
        <% Response.Write("Current date, in a culture specific format: " + DateTime.Now.ToString()); %>
    </form>
</body>

</html>