<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ArtistMenu.aspx.cs" Inherits="JojoArtwork.Artist.ArtistMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Artist/Artist.aspx">Post Art</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Artist/ViewArt.aspx">View Art</asp:HyperLink>
    </form>
</body>
</html>
