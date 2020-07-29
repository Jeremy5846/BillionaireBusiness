<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="JojoArtwork.Customer.EditProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 94%;
        }
        .auto-style4 {
            width: 299px;
        }
        .auto-style5 {
            height: 24px;
            width: 374px;
        }
        .auto-style6 {
            width: 342px;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            width: 298px;
        }
        .auto-style10 {
            width: 295px;
        }

        .editForm {
            background-color: white;
            width: 60%;
            display: block;
            margin-top: 10%;
            margin-bottom: 5%;
            margin-left: auto;
            margin-right: auto;
            padding: 3%;
            height: 900px;
        }

        .auto-style11 {
            height: 88px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="editForm">
        <h2>Edit Profile</h2>
        <table id="tbDetails" class="auto-style3">
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name is required." ToolTip="First Name is required.">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name is required." ToolTip="Last Name is required.">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="lblDob" runat="server" Text="Date Of Birth"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblContact" runat="server" Text="Contact No."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:TextBox ID="txtDob" runat="server" type="date"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">

                    <asp:Label ID="lblEmail" runat="server" Text="Email Address"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Address is required." ToolTip="Email Address is required.">*</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style11">
                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                    <br />
                    <asp:RadioButtonList ID="rbGender" runat="server" RepeatDirection="Horizontal" Width="185px">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
        
        <table id="tbDelAdress" class="auto-style8">
            <tr>
                <td colspan="2">

                    My Delivery Address</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblDelName" runat="server" Text="Name"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtDelName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblDelPhone" runat="server" Text="Phone No."></asp:Label>
                    <br />
                    <asp:TextBox ID="txtDelPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style5">

                    <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>

                    <br />
                        <div style ="width: 78%; height: 85px; display: block;" 
                            class="message_text_box_left">

                            <asp:TextBox ID="txtDelAddress" Rows="3" 
                                CssClass="message_text_box" ToolTip="Enter your delivery address here." 
                                TextMode="MultiLine" runat="server" />                        
                        </div>  
            </tr>
        </table>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>

        </table>
        
        <p> 
            <asp:CheckBox ID="cbBilAddress" runat="server" Checked="True" Text="The Billing Address is same as the Delivery Address" AutoPostBack="True" OnCheckedChanged="cbBilAddress_CheckedChanged" />
        </p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="BillPanel" runat="server">
                        <table id="tbBilAddress" style="width:100%;">
                            <tr>
                                <td class="auto-style6" colspan="2">My Billing Address</td>
                            </tr>
                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblBilName" runat="server" Text="Name"></asp:Label>
                            <br />
                                    <asp:TextBox ID="txtBilName" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="lblBilPhone" runat="server" Text="Phone No."></asp:Label>
                            <br />
                                    <asp:TextBox ID="txtBilPhone" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="lblBilAddress" runat="server" Text="Address"></asp:Label>
                            <br />
                                    <div class="message_text_box_left" style="width: 78%; height: 85px; display: block;">
                                        <asp:TextBox ID="txtBilAddress" runat="server" CssClass="message_text_box" Rows="3" TextMode="MultiLine" ToolTip="Enter your billing address here." />
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </ContentTemplate>
        </asp:UpdatePanel>
        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save Changes" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
        <br />
        <br />


        <p>
            <asp:Label ID="lblSucessful" runat="server"></asp:Label>
        </p>

    </div>
    </form>
    
    </body>
</html>
