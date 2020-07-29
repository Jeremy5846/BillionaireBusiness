<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewArt.aspx.cs" Inherits="AssignmentPart1.ViewArt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .designLabel{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%;float:left">
            <h1 style="text-align:center">Art Gallery</h1>

            <div style="float:left;width:100%;"> 
            <asp:Repeater ID="Repeater" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div style="float:left; margin:10px 10px 10px 10px; border:groove;width:31.3%">
                        <asp:Table runat="server">
                            <asp:TableHeaderRow>
                                <asp:TableHeaderCell ColumnSpan="2">
                                    <asp:Image ID="Image1" height="280px" Width="100%" runat="server" ImageAlign="Middle" ImageUrl='<%# Eval("ART_FILEPATH") %>'/>
                                </asp:TableHeaderCell>
                            </asp:TableHeaderRow>

                            <asp:TableRow>
                                <asp:TableCell CssClass="designLabel">
                                    Name:
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:HiddenField ID="hiddenID" runat="server" Value='<%# Eval("ART_ID") %>'/>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ART_NAME") %>' ></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell CssClass="designLabel">
                                    Description:
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ART_DESCRIPTION") %>' ></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell CssClass="designLabel">
                                    Publish date:
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("PUBLISH_DATE") %>' ></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell CssClass="designLabel">
                                    Stock:
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("ART_STOCK") %>' ></asp:Label>
                                    <asp:DropDownList ID="ddlStock" runat="server" Visible="false"></asp:DropDownList>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell CssClass="designLabel">
                                    Price:
                                </asp:TableCell>
                                <asp:TableCell>
                                    RM<asp:Label ID="Label5" runat="server" Text='<%# Eval("ART_COST") %>' ></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>    
                        </asp:Table>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ART_FILEPATH], [ART_NAME], [PUBLISH_DATE], [ART_DESCRIPTION], [ART_COST], [ART_STOCK], [ART_ID] FROM [Art]"></asp:SqlDataSource>
            </div>
        </div>

        <div style="float:right; margin-right:15px;margin-top:20px; margin-bottom:20px">

            <asp:Button ID="editBtn" runat="server" Text="Edit Stock" OnClick="Button1_Click"/>
            <asp:Button ID="confirmBtn" runat="server" Text="Confirm" OnClick="Button2_Click" Visible="false"/>
&nbsp;
&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Artist/ArtistMenu.aspx">Back to Menu</asp:HyperLink>
        </div>
    </form>
</body>
</html>
