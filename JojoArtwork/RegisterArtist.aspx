<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterArtist.aspx.cs" Inherits="JojoArtwork.RegisterArtist" %>

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



        
            <img alt="blank" class="auto-style3" src="Image/jojo_logo.jpg" /><br />
            <br />
            Register As<br />
            Artist<br />
            <div style="text-align:center; padding-left:10%; padding-right:10%;">
            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Width="486px" OnCreatedUser="CreateUserWizard1_CreatedUser1" ContinueDestinationPageUrl="~/Login.aspx">
                <WizardSteps>
                    <asp:CreateUserWizardStep runat="server" >
                        <ContentTemplate>
                            <table style="font-size:100%;width:486px;">
                                <tr>
                                    <td align="center" colspan="2">Sign Up for Your New Account</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:TextBox ID="UserName" runat="server" Placeholder="User Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:TextBox ID="FirstName" runat="server" Placeholder="First Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstName" ErrorMessage="First Name is required." ToolTip="First Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td align="left">
                                        <asp:TextBox ID="LastName" runat="server" Placeholder="Last Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastName" ErrorMessage="Last Name is required." ToolTip="Last Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:TextBox ID="Email" runat="server" Placeholder="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                <tr>
                                    <td colspan="2">
                                        <asp:TextBox ID="Password" runat="server" Placeholder="Password" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:TextBox ID="ConfirmPassword" runat="server" Placeholder="Comfirm Password" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label runat="server" ID="lblAgreement" Text="* By continuing, I confirm that I have read and agree to the JojoArtwork Terms of Service."/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                        <CustomNavigationTemplate>
                            <table border="0" cellspacing="5" style="width:100%;height:100%;">
                                <tr align="right">
                                    <td align="center" colspan="0">
                                        <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Register" ValidationGroup="CreateUserWizard1" />
                                    </td>
                                </tr>
                            </table>
                        </CustomNavigationTemplate>
                    </asp:CreateUserWizardStep>
                    <asp:CompleteWizardStep runat="server" >
                    </asp:CompleteWizardStep>
                </WizardSteps>
            </asp:CreateUserWizard>
            </div>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Already a customer? Click here to login</asp:HyperLink>
            <br />
        </form>
    </div>
</body>
</html>
