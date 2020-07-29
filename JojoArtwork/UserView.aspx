<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserView.aspx.cs" Inherits="JojoArtwork.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="imgs/BannerUserView.PNG" class="img-fluid"/>
    </section>
    <section>

      
        
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
              <ItemTemplate>            
                  <div style="padding-left:5%;padding-right:5%">
                            
                      <table>
                         <hr />
                          <tr>
                              <td style="width:50%">
                                  Artist Profile
                              </td>
                         
                               <td>
                                  <asp:ImageButton ID="Image1" Height="150px" Width="150px" BorderWidth="3" runat="server" ImageAlign="Middle" ImageUrl='<%# Eval("ART_FILEPATH") %>'/>  <br /> <%#Eval("ART_NAME")%>  RM  <%#Eval("ART_COST")%>                       
                                </td>
             
                          </tr>
                      </table>    




                  </div>
              </ItemTemplate>
        </asp:Repeater>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ART_NAME], [ART_FILEPATH], [ART_COST], [GENRE] FROM [Art]">      
        </asp:SqlDataSource>

      
     
        <br />

       
    </section>

 </asp:Content>
