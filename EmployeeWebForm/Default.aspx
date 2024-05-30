<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeWebForm._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    

    <table class="w-100">
        <tr>
            <td style="font-family: Roboto; font-size: x-large; font-weight: normal; font-style: italic; font-variant: normal; color: #000000; width: 492px;">
                Complete CRUD Operation Using ASP.NET C# With SQL Using Store Procedure

            </td>
            
            
        </tr>
        <tr>
            <td style="width: 492px">UserId</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Height="16px" Width="217px" Wrap="False" CssClass="offset-sm-0"></asp:TextBox>
        <asp:Button ID="Button4" runat="server" BackColor="#6600FF" BorderStyle="Solid" ForeColor="White" Text="Search" Width="100px" BorderColor="White" BorderWidth="0px" OnClick="Search_User" />
            </td>
            
        </tr>
        <tr>
            <td style="width: 492px">UserName</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Height="16px" Width="217px" Wrap="False"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
     <td style="width: 492px; height: 27px;">Specifications</td>
     <td style="height: 27px">
         <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Height="16px" Width="217px" Wrap="False">
             <asp:ListItem>IT</asp:ListItem>
             <asp:ListItem>Developer</asp:ListItem>
             <asp:ListItem>Softwere</asp:ListItem>
             <asp:ListItem>BackEndDeveloper</asp:ListItem>
             <asp:ListItem>FullStackDeveloper</asp:ListItem>
         </asp:DropDownList>
     </td>
     
 </tr>
        <tr>
            <td style="height: 21px; width: 492px">Email</td>
            <td style="height: 21px">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Height="16px" Width="217px" Wrap="False"></asp:TextBox>
            </td>
           
        </tr>
         <tr>
     <td style="height: 21px; width: 492px">Gender</td>
     <td style="height: 21px">
         <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
             <asp:ListItem>Male</asp:ListItem>
             <asp:ListItem>Female</asp:ListItem>
         </asp:RadioButtonList>
     </td>
    
 </tr>
        <tr>
            <td style="height: 21px; width: 492px">City</td>
            <td style="height: 21px">
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Height="16px" Width="217px" Wrap="False"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 492px; height: 24px;">State</td>
            <td style="height: 24px">
                <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Height="16px" Width="217px" Wrap="False"></asp:TextBox>
            </td>
            
            
        </tr>
        <tr>
            <td style="width: 492px; height: 24px;">Pincode</td>
            <td style="height: 24px">
                <asp:TextBox ID="TextBox6" runat="server" Font-Size="Medium" Height="16px" Width="217px" Wrap="False"></asp:TextBox>
            </td>
            
        </tr>
         <tr>
     <td style="width: 492px">Register Date</td>
     <td>
         <asp:TextBox ID="TextBox7" runat="server" Font-Size="Medium" Height="16px" Width="217px" Wrap="False"></asp:TextBox>
             </td>
     
 </tr>
        <tr>
    <td style="width: 492px">&nbsp;</td>
    <td>
        <asp:Button ID="Button1" runat="server" BackColor="#6600FF" BorderStyle="Solid" ForeColor="White" Text="Insert" Width="100px" BorderColor="White" BorderWidth="0px" OnClick="Insert_User" />
        <asp:Button ID="Button2" runat="server" BackColor="#6600FF" BorderStyle="Solid" ForeColor="White" Text="Update" Width="100px" BorderColor="White" BorderWidth="0px" OnClick="Update_User"  />
        
         <asp:Button ID="Button3" runat="server" BackColor="#6600FF" BorderStyle="Solid" ForeColor="White" Text="Detele" Width="100px" BorderColor="White" BorderWidth="0px" OnClick="Delete_User" OnClientClick="return confirm('Are you sure to Delete?')"  />
        
    </td>
    
</tr>
                <tr>
    <td style="width: 492px">&nbsp;</td>
    <td>
        &nbsp;</td>
    
</tr>
                <tr>
    <td colspan="2" >
        <asp:GridView ID="GridView1" runat="server" Width="876px">
            <HeaderStyle BackColor="#6600FF" ForeColor="White" />
        </asp:GridView>
                    </td>
    
</tr>
        
    </table>

    

  

</asp:Content>
