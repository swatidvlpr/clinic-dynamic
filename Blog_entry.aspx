<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Blog_entry.aspx.cs" Inherits="Admin_Blog_entry" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

         .Btn{
	width:80px;
	padding:10px;
	background:#1A7AD3;
	font:normal 15px/14px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#fff;
	margin:3px 0px;
	border:1px solid #002240;
	border-radius:4px;
	
}
.Btn:hover 
{
    background:#E7830C;
    color:#fff
}

  .Btn1{
	padding:10px 16px;
	background:#DBDBDB;
	font:normal 15px/14px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#333333;
	margin:3px 0px;
	border:1px solid #707070;
	border-radius:4px;
	margin-left:6px;
		-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out
	
}
.Btn1:hover 
{
    background:#59AECD;
    border:1px solid #3D9CBF;
    color:#fff;
    	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out
}

.input{
	     border-right: 1px solid #002240;
             border-top: 1px solid #002240;
             border-bottom: 1px solid #002240;
             width:90%;
	         padding:8px 0 8px 8px;
	         background:#FFF;
	         font:normal 15px/14px "Trebuchet MS", Arial, Helvetica, sans-serif;
	         color:#333333;
	         border-left:2px solid #002240;
             margin-top: 3px;
             margin-bottom: 3px;
             float:left;
   }
   
   .input1{
	     border-right: 1px solid #002240;
             border-top: 1px solid #002240;
             border-bottom: 1px solid #002240;
             width:60%;
	         padding:8px 0 8px 8px;
	         background:#FFF;
	         font:normal 15px/14px "Trebuchet MS", Arial, Helvetica, sans-serif;
	         color:#333333;
	         border-left:2px solid #002240;
             margin-top: 3px;
             margin-bottom: 3px;
             float:left;
   }
   
   .header_menu_bg 
   {
       background:url(icon/Buttonmenu.JPG);
       padding:10px 24px;
       color:White;
       
   }
    .ali_wid 
   {
       background:#fFf;
       padding:6px 24px;
       color:#333;
       
   }
   
   
 
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table>
         <tr>
            <td colspan="4" style="padding-right:50px;font-size:xx-large;color:#FF0066;" class="auto-style1"><strong>Blog Entry</strong></td>
        </tr>
          <tr><td></td><td></td></tr>            
                
    <tr>   
     <td style="text-align:center;padding-left:40px;font-size:xx-large"><strong>Blog Entry</strong></td> 
    </tr>
    <tr>
     
    <td style="color:black;">
        Header Name :
    </td>
     <td>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="input" placeholder="Header Name"></asp:TextBox>
    </td>
    </tr>      
      <tr>
    <td style="color:black;">
       Description :
    </td>
     <td>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="input" placeholder="Description" TextMode="MultiLine"></asp:TextBox>
    </td>
    </tr>
     <tr>
      <td style="color:black;">Photo</td>      
         <td>
             <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Image ID="Image2" runat="server"  Width="120px" Height="120px" />
        </td>
        </tr>
       <tr>
    <td style="color:black;">
       Date :
    </td>
     <td>
    <asp:TextBox ID="TextBox3" runat="server" CssClass="input" placeholder="Date" ></asp:TextBox>
         <cc1:CalendarExtender ID="TextBox3_CalendarExtender" runat="server" Enabled="True" PopupPosition="BottomRight" TargetControlID="TextBox3">
         </cc1:CalendarExtender>
    </td>
    </tr>
       <tr>
    <td>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
           </td>     
    </tr>
       <tr>
    <td>
      </td>
     <td>
         <asp:Button ID="Button1" runat="server" Text="Submit" Width="80px" BackColor="#FF0066" Height="33px" OnClick="Button1_Click"/>
         <asp:Label ID="Label1" runat="server" ForeColor="#FF9966"></asp:Label>
    </td>
    </tr>      
       <tr>
    <td align="center" colspan="2">
        <asp:GridView runat="server" AutoGenerateColumns="False" 
            GridLines="None" ID="GridView1" Width="100%" DataKeyNames="blogid" OnRowDeleting="GridView1_RowDeleting" CellPadding="4" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                        <asp:BoundField DataField="Header_name" HeaderText="Header name" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Description" HeaderText="Description" >

                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                      <asp:TemplateField HeaderText="Photo">
                      <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                            <HeaderStyle  ForeColor="White" />
                    <ItemTemplate>
                         <asp:Image ID="Image3" runat="server" Width="120px" Height="120px" ImageUrl='<%#Eval("Photo")%>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                       
                         <asp:BoundField DataField="Date" HeaderText="Date" >
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:CommandField ShowDeleteButton="True" />
                   </Columns>
           
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
           </td>
    </tr>
       
    </table>
</asp:Content>

