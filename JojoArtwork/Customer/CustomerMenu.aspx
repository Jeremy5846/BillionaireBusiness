<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerMenu.aspx.cs" Inherits="JojoArtwork.Customer.CustomerMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Customer Menu</div>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Customer/EditProfile.aspx">Edit Profile</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Customer/ShoppingList.aspx">shopping</asp:HyperLink>
        </p>
         <p>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Customer/PurchaseHistory.aspx">Purchase History</asp:HyperLink>
        </p>
    </form>
</body>
</html>
