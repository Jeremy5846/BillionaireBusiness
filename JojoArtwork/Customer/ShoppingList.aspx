<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingList.aspx.cs" Inherits="WishListFunction.ShoppingList" %>

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
            <span class="auto-style1"><strong>JOJO ARTWORKS</strong></span><br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Customer/WishList.aspx">WishList</asp:HyperLink>
            <br />
            <br />
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    ART_ID:
                    <asp:Label ID="ART_IDLabel" runat="server" Text='<%# Eval("ART_ID") %>'  />
                    <br />
                    ART_NAME:&nbsp;<asp:Label ID="ART_NAMELabel" runat="server" Text='<%# Eval("ART_NAME") %>' />
                    <br />GENRE:
                    <asp:Label ID="GENRELabel" runat="server" Text='<%# Eval("GENRE") %>' />
                    <br />
                    PUBLISH_DATE:
                    <asp:Label ID="PUBLISH_DATELabel" runat="server" Text='<%# Eval("PUBLISH_DATE") %>' />
                    <br />
                    ART_COST:
                    <asp:Label ID="ART_COSTLabel" runat="server" Text='<%# Eval("ART_COST") %>' />
                    <br />
                    ART_DESCRIPTION:
                    <asp:Label ID="ART_DESCRIPTIONLabel" runat="server" Text='<%# Eval("ART_DESCRIPTION") %>' />
                    <br />
                    ART_STOCK:
                    <asp:Label ID="ART_STOCKLabel" runat="server" Text='<%# Eval("ART_STOCK") %>' />
                    <br />
                    ART_FILEPATH:
                    <asp:Image ID="Image1" runat="server" Height="199px" ImageUrl='<%# Eval("ART_FILEPATH") %>' Width="202px" />
                    <br />
                    ARTIST_ID:
                    <asp:Label ID="ARTIST_IDLabel" runat="server" Text='<%# Eval("ARTIST_ID") %>' />
                    <br />
                    &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Add to Wishlist" />
                    <br />
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JojoArtworkConnectionString %>" SelectCommand="SELECT * FROM [Art]">
            </asp:SqlDataSource>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
