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
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Customer/ShoppingList.aspx">Back to Shooppingggg</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ART_ID,CUSTOMER_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="ART_ID" HeaderText="ART_ID" ReadOnly="True" SortExpression="ART_ID" />
                    <asp:BoundField DataField="ART_NAME" HeaderText="ART_NAME" SortExpression="ART_NAME" />
                    <asp:BoundField DataField="ART_COST" HeaderText="ART_COST" SortExpression="ART_COST" />
                    <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER_ID" ReadOnly="True" SortExpression="CUSTOMER_ID" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JojoArtworkConnectionString %>" OldValuesParameterFormatString="arr_{0}" DeleteCommand="DELETE FROM Wishlist WHERE (ART_ID = @arr_ART_ID) AND (CUSTOMER_ID = @arr_CUSTOMER_ID)" SelectCommand="SELECT W.ART_ID, A.ART_NAME, A.ART_COST, W.CUSTOMER_ID FROM Wishlist AS W INNER JOIN Art AS A ON W.ART_ID = A.ART_ID">
                <DeleteParameters>
                    <asp:Parameter Name="arr_ART_ID" Type="Int32" />
                    <asp:Parameter Name="arr_CUSTOMER_ID" Type="Int32" />
                </DeleteParameters>
            </asp:SqlDataSource>    
            <br />
        </div>
    </form>
</body>
</html>
