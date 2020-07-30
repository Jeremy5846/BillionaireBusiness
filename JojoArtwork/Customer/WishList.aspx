<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WishList.aspx.cs" Inherits="WishListFunction.WishList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1"><strong>WishLISTTTTTT</strong></span><br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Customer/ShoppingList.aspx">Back to Shoopping</asp:HyperLink>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" DataKeyNames="ART_ID" OnRowDeleting="OnRowDeleting">
                <Columns>
                <asp:CommandField ButtonType="Link" ShowDeleteButton="true" ItemStyle-Width="150" />
                </Columns>
            </asp:GridView>
            <br />
        </div>          
    </form>
</body>
</html>
