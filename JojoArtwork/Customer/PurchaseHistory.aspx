<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PurchaseHistory.aspx.cs" Inherits="JojoArtwork.Customer.PurchaseHistory" %>

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
            <strong><span class="auto-style1">Purchase History of </span>
            <asp:Label ID="lblUserName" runat="server" CssClass="auto-style1"></asp:Label>
            <br />
            <br />
            </strong>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Customer/CustomerMenu.aspx">Back to Menu</asp:HyperLink>
            <br />
            <br />
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                      <asp:TemplateField HeaderText="CUSTOMER ID" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblArtId" runat="server" Text='<%# Eval("CUSTOMER_ID") %>'></asp:Label>
                    </ItemTemplate>                  
                <ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>

                          <asp:TemplateField HeaderText="ORDER ID" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblArtId" runat="server" Text='<%# Eval("ORDER_ID") %>'></asp:Label>
                    </ItemTemplate>                  
                <ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="DATE AND TIME" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblArtCost" runat="server" Text='<%# Eval("DATE_AND_TIME") %>'></asp:Label>
                    </ItemTemplate>                   
                    <ItemStyle Width="150px"></ItemStyle>   
                     </asp:TemplateField>   

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

                     <asp:TemplateField HeaderText="QUANTITY" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblArtCost" runat="server" Text='<%# Eval("QUANTITY") %>'></asp:Label>
                    </ItemTemplate>                   
                    <ItemStyle Width="150px"></ItemStyle>   
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="PRICE/PER ART" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblArtCost" runat="server" Text='<%# Eval("ART_COST") %>'></asp:Label>
                    </ItemTemplate>                   
                    <ItemStyle Width="150px"></ItemStyle>   
                     </asp:TemplateField>     
                    
                     <asp:TemplateField HeaderText="TOTAL PRICE" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblArtCost" runat="server" Text='<%# Eval("TOTALPRICE") %>'></asp:Label>
                    </ItemTemplate>                   
                    <ItemStyle Width="150px"></ItemStyle>   
                     </asp:TemplateField>    
              
                </Columns>
            </asp:GridView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
