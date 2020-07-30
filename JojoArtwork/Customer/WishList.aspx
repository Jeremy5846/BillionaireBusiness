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
            <asp:GridView ID="GridView1" runat="server" DataKeyNames="ART_ID" OnRowDeleting="OnRowDeleting" AutoGenerateColumns="False">
                <Columns>
                <asp:TemplateField HeaderText="ART NAME" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblArtId" runat="server" Text='<%# Eval("ART_NAME") %>'></asp:Label>
                    </ItemTemplate>                  
<ItemStyle Width="150px"></ItemStyle>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="ART PIC" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="199px" ImageUrl='<%# Eval("ART_FILEPATH") %>' Width="202px" />
                    </ItemTemplate>                   
<ItemStyle Width="150px"></ItemStyle>

                </asp:TemplateField>
                     <asp:TemplateField HeaderText="ART COST" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblArtCost" runat="server" Text='<%# Eval("ART_COST") %>'></asp:Label>
                    </ItemTemplate>                   
<ItemStyle Width="150px"></ItemStyle>               

                </asp:TemplateField>
                <asp:CommandField ButtonType="Link" ShowDeleteButton="true" ItemStyle-Width="150" ><ItemStyle Width="150px"></ItemStyle></asp:CommandField>
                </Columns>
            </asp:GridView>
            <br />
        </div>          
    </form>
</body>
</html>
