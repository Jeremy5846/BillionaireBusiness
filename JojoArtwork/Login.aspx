<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JojoArtwork.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        html{
	        background-color:rgb(243,241,236);
        }

        .formSignUp{
            background-color:white;
	        width:46%;
	        display:block;
	        text-align:center;
	        margin-top:10%;
	        margin-bottom:5%;
	        margin-left:auto;
	        margin-right:auto;
	        padding:3%;
        }



        .auto-style1 {
            background-color: white;
            width: 46%;
            display: block;
            text-align: center;
            margin-top: 10%;
            margin-bottom: 5%;
            margin-left: auto;
            margin-right: auto;
            padding: 3%;
            height: 460px;
        }
        .auto-style2 {
            height: 448px;
        }
        .auto-style3 {
            width: 94px;
            height: 71px;
        }



    </style>
</head>
<body>
    <div class="auto-style1">
        <form id="form1" runat="server" class="auto-style2">



        
            <img alt="blank" class="auto-style3" src="Images/jojo_logo.jpg" /><br />
            <br />
            Welcome to Jojo Artwork<br />
            <br />
            <div style="text-align:center; padding-left:31%; padding-right:25%;">

                <asp:Login ID="Login1" runat="server" OnLoggedIn="Login1_LoggedIn1">
                    <LayoutTemplate>
                        <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                            <tr>
                                <td>
                                    <table cellpadding="0">
                                        <tr>
                                            <td align="center">Log In</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="UserName" runat="server" Placeholder="User Name"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="Password" runat="server" TextMode="Password" Placeholder="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="color:Red;">
                                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:Login>

            </div>
            <br />
            <br />
            Want to register as Artist? Click <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegisterArtist.aspx">Here</asp:HyperLink>
            <br />
            Want to register as Customer? Click
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/RegisterCustomer.aspx">Here</asp:HyperLink>
            <br />
            <br />
        </form>
    </div>
</body>
</html>
